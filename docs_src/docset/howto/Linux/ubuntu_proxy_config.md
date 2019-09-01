###### Configurer l'accès à travers un serveur proxy à partir du terminal

##### Qu'est-ce qu'un serveur proxy ?

Link to Ubuntu [Proxy](https://doc.ubuntu-fr.org/proxy) docs

#### Environnement global

Le fichier /etc/profile est lu au démarrage du système.

Modifiez le fichier /etc/profile\\\\ ajouter cette ligne à la fin du
fichier:`export http_proxy=`[`http://"proxy_ip`]`":"port_number"` où
"proxy\_ip" et "port\_number" seront adaptés à votre situation

#### Environnement bash

Le fichier /etc/bash.bashrc est lu au démarrage de votre terminal.

Modifiez le fichier /etc/bash.bashrc, puis ajoutez à la fin du
fichier
```
export http_proxy="http://proxy_ip:port_number"
```
"proxy_ip" et "port_number" seront adaptés à votre situation

#### Wget

[wget](https://doc.ubuntu-fr.org/wget) permet à différents scripts de télécharger des données.

modifier le fichier /etc/wgetrc recherchez et décommentez les lignes
(enlevez les **#** en début de lignes) 
```
#http_proxy = <http://proxy.yoyodyne.com:18023/>
```
1.  use\_proxy = on</code> en remplaçant les paramètres du proxy.

#### Apt

[apt](https://doc.ubuntu-fr.org/apt) est le programme qui télécharge et installe les mises à jour.

Créer un fichier /etc/apt/apt.conf.d/proxyPerso.conf\\\\ ajoutez la
ligne suivante
`Acquire::`[`http::proxy`]` "`[`http://adresse:port/`]`";` en remplaçant
adresse par l'adresse du proxy, et port par le port.

##### Désactiver le proxy

#### Ponctuellement

Pour désactiver le proxy http ou https pendant la session de travail :
`$ unset http_proxy` `$ unset https_proxy` `ou` `$ export http_proxy=''`
`$ export https_proxy=''` `vérifier avec` `$ printenv` `ou`
`$ printenv https_proxy`

#### Durablement

suivre la procédure inverse des chapitres précedents expliquant la
modification des fichiers, en supprimant les lignes en question

##### Sources

` * `<s>[`http://www.linuxtent.com/?p=105`]</s>` FIXME Lien brisé... `  
` * `[`http://www.asterisk-france.org/archives_net/showthread.php?t=4098`]  
` * `[`http://dev.petitchevalroux.net/linux/configurer-proxy-ligne-commande-linux.378.html`]
