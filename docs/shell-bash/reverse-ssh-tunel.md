# Reverse SSH Tunel


## Objet
Le but de cette page est de décrire le processus de mise en place d'un reverse SSH. Cela permet de se connecter depuis un port local de votre machine et d'attérire directement sur le réseau distant protégé. Nous allons parler de proxy, tunnel, ssh et dédibox (ou serveur linux distant)

## Disclamer
Le but de cette page n'est pas de vous apprendre à priater un réseau LAN distant mais bien de vous en expliquer le fonctionnement. De plus, pour les entreprises les plus riches, il existe des
 appliances qui permettent de vérifier les données qui transitent anormalements sur les ports conventionnels (TCP_80, TCP_443...).

Je ne pourrais être tenu responsable de vos agissements.

 
## Conseils

1. Veuillez utiliser un user avec droits réduit sur votre dedibox
2. Utiliser les clefs SSH (ssh-copy-id) pour pouvoir automatiser la connexion


## Manière de procéder
Habituellement, votre entreprise, pour des raisons évidentes de sécurités, met en place un certains nombre de protections pour l'accès à Internet.
Le filtrage web est fait généralement par un proxy. De plus, seul les ports suivants sont accessibles vers Internet:


|Protocole|Port par défaut|
|-----------|-----------------|
|HTTP|80 (TCP)|
|HTTPS|443 (TCP)|
|IMAP4/SSL|993 (TCP)|
|IMAP4 avec ou sans TLS|143 (TCP)|
|POP3/SSL|995 (TCP)|
|POP3 avec ou sans TLS|110 (TCP)|

## Contexte de notre démo
Pour cette démo, nous allon prendre les informations suivantes en compte:

|Description|@ IP|
|-------------|------|
| Machine sur le LAN de l'entreprise|192.168.1.100|
| IP proxy de l'entreprise|192.168.1.2 port 8080|
| Authentification proxy|login toto et mdp titi|
| Dedibox|192.168.100.100|
| Port TCP ouvert par l'entreprise| port 993 TCP|
| IP publique dedibox|212.212.212.212|


## Phase 1
### Tester l'accès à votre dedibox depuis le LAN de l'entreprises
ssh userreduit@212.212.212.212 -p 993

Si la connexion est établi, c'est que ça passe. Bravo, vous avez trouvé une première faille de sécurité chez votre employeur. Je vous invite à le signaler...

### Paramétrage du ssh
Editez le fichier suivant afin de facilité votre ligne de commande pour la connexion:
```bash
vi ~/.ssh/config
HostName 212.212.212.212
User userreduit
IdentityFile    ~/.ssh/id_rsa
Port 993
ProxyCommand /usr/bin/corkscrew 192.168.1.2 8080 %h %p ~/.ssh/myauth
ServerAliveInterval     30
ServerAliveCountMax     3
```

Oui, il vous manque des informations sur:

* corkscrew
* id_rsa
* myauth

### Installation de corkscrew
Lancez la commande suivante en tant que root:
```bash
wget http://www.agroman.net/corkscrew/corkscrew-2.0.tar.gz
tar xvzf corkscrew-2.0.tar.gz
cd corkscrew-2.0/
./configure
make
make install
ll /usr/bin/corkscrew
cp corkscrew /usr/bin/corkscrew
```

### Création du fichier ~/.ssh/myauth
```bash
vi ~/.ssh/myauth
```

Insérez les éléments suivants:
```bash
userreduit:mdp_userreduit
```

### Création d'une clef SSH
Lancez les commandes suivantes afin de créer et treansférer votre clef:
```bash
ssh-key-gen -t rsa -b 2048
ssh-copy-id -p 993 userreduit@212.212.212.212
```


### Lancement de la connexion
Lançons notre première tentative:

```bash
 ssh -nNT -R 9999:192.168.100.6:22 /root/.ssh/config
```

Merveilleux, ça se connecte (ne rend pas la main). Vérifiez sur votre dedibox:
```bash
netstat -nlpt|grep 9999
```

### Explications de la commande


* N: Ne pas exécuter sur la dédibox
* f: mettre en background (permet de relacher la console après que la connexion soit ouverte)
* R: Tunnel inversé

Cette commande permet d'établir la connexion et de réserver un port sur la dedibox en local soit 127.0.0.1:9999. Donc, seul la dédibox aura accès au LAN de l'entreprise.
Ok,  mais le but est d'y accéder depuis n'importe quelles machines de mon LAN perso.

### Gateway Ports et Allow Tcp Forwarding
Afin d'autorisé n'importe quelles machines de mon réseau perso à accèder au LAN de mon entreprise, j'ai besoin de modifier le paramétrage de sshd sur ma dédibox.

Il faut édité le fichier /etc/ssh/sshd_config et ajouter ceci:
```bash
AllowTcpForwarding yes
GatewayPorts yes
```

Relancez le daemon sshd de votre dédibox...

### Résumons
Nous avons avec la phase 1 réussi à paramétrer un reverse ssh en mode tunnel.
Le truc, c'est qu'avec la phase 1, il faut lancer depuis la machine en entreprise à la main la connexion. De plus, rien de garantie que celle-ci va perdurer.

## Pahse 2 - Automatiser le tunnel
### autossh
L'installation d'**autossh** va permettre de réaliser la chose.

Sous centos:
```bash
yum install -y autossh
```

Lancement de la commande:
```bash
autossh -M 0 -f -o "PubkeyAuthentication=yes" -o "PasswordAuthentication=no" -nNT -R 9999:localhost:22 /root/.ssh/config
```

Il suffit ensuite dans la placer dans l'un vos scripts de démarrage de la machine de l'entreprise.

## Maintenant on en fait quoi de ce tunnel!
Vous avez la possibilité de vous connecter à tout le système d'information de votre entreprise (accessible depuis la machine en entreprise).

### Navigation vers un serveur web de l'entreprise
Pour cela, il suffit de modifier le paramétrage proxy socks5 de firefox, pour l'exemple, et d'y mettre dédibox_IP:9999 .

Ca marche aussi pour accèder à Internet depuis l'entreprise. Si celle-ci est géolocalisée sur un autre continent, vous aurez la possibilité d'accèder à des services réservés à ce pays sur Internet...

### VOIP
Vous avez la possibilité de paramétrer votre client VOIP pour accèder au serveur VOIP de l'entreprise et ainsi travailler depuis chez vous.

### RDP
Possibilité pour les entreprises avec peu de moyen de mettre en place une politique de bureau distant à moindre coût (pas d'infra Citrix lourde).

## Mon conseil
### Pour le disclamer
Avant de mettre en action cette procédure ou howto, souvenez-vous d'une chose. Ne vous mettez pas en défaut fasse à votre entreprise et demandez l'authorisation.

En effet, même si celle-ci ne peut pas vous en empêcher, elle pourra toujours observer une connexion constante vers ovh/online.net... et pourra remonter jusqu'à votre machine (hors clonage MAC address et vol de credentials).
 
### Avantage/Inconvégnant
Si on limite dans le temps son utilisation, ça reste un moyen rapide de mettre en place un lien sécurisé et à bas coup.

Par contre, pour un déploiement en prod, je conseil vivement d'utiliser un VPN (openvpn et autres) en mode **Nomade to Gateway**.


