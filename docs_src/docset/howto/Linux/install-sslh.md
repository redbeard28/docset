# Installer and configurer SSLH

##Résumé

Tu rencontres des problèmes pour naviguer librement sur internet derrière le proxy d'une entreprise? 

Tu souhaites naviguer sur Internet depuis un wifi publique?

Tu souhaites tout simplement accèder à ton serveur Docker swarm personnel...

Alors regarde ces quelques lignes afin de comprendre comment contourner le problème.


##ADVISE

Attention, je ne suis pas responsable de ce que tu vas faire et donc tu assumera pénalement tous les méfais que tu pourrais faire et aussi les conséquences.
En effet, cet article est à but pédagogique et ne doit être utilisé que dans le cadre légale de la charte informatique que tu auras signé sur le lieu de connexion. 


## Installation de SSLH

Sous centos:
````bash
yum install sslh
````

## Paramétrage
tu initialisera ce fichier suivant:
````bash
 This is a basic configuration file that should provide
# sensible values for "standard" setup.

verbose: false;
foreground: true;
inetd: false;
numeric: false;
transparent: false;
timeout: 2;
user: "sslh";


# Change hostname with your external address name.
listen:
(
    { host: "192.168.1.5"; port: "4443"; }
);
# For openvpn, use TCP port
protocols:
(
     { name: "ssh"; service: "ssh"; host: "192.168.1.5"; port: "22"; fork: true; },
     { name: "openvpn"; host: "192.168.1.10"; port: "1194"; },
     { name: "http"; host: "localhost"; port: "80"; },
     { name: "ssl"; host: "localhost"; port: "4443"; probe: "builtin"; log_level: 0; }
);
````

That's it !


## Explications
Comme on peu le constater, il y a plusieurs services qui dépendent de **sslh**

Tout d'abort, celui-ci écoute sur le port **TCP 4443**. Normal, moi j'y ai mis un haproxy. Mais tu aurais pu mettre un nginx en mode reverse-proxy...

Ensuite, tu constates qu'il y a un serveur OpenVPN. C'est là que cela devient interressant. Il suffit de paramétrer ton client OpenVPN pour se connecter sur ton @IP publique sur le port TCP 443.

Le proxy du site sur lequel tu te connectes sur Internet penses avoir à faire à un site web de type HTTPS (ssl). Alors qu'en fait, le VPN est encapsulé dans le SSL.

BAM ! c'est fait.

Bon bien sûr, il reste quelques détails à regler. Comme la génération d'un certificat SSL officiel et reconnu (va voir mon repo github avec **Letsencrypt**)


