Introduction
------------

Cette page décrit comment remplir le fichier /etc/hosts.deny.

A quoi ça sert ?
----------------

Ce fichier est là pour limiter l'accès à certain ou tous les services de
votre serveur Linux. Il peut être remplacé par iptables. Cependant, pour
sécuriser rapidement un serveur, il peut s'avéré être une arme efficace.

Accès SSH
---------

Pour limité l'accès en ssh sur votre serveur à un certain groupe de
machine sur votre réseau vous pouvez insérer la ligne suivante en
remplaçant le subnet par le votre:

``` {.bash}
------
sshd : 192.168.1.* : ALLOW
------
```

Bon, il est vrai que le fichier hosts.allow est là aussi pour ça. Je
conseils dans le cas d'une sécurisation extrème de faire comme ceci.

<div align="left">
<div class="msg_warning">
Attention, l'exemple qui suit n'est pas fait pour être utilisé dans le
cas d'un serveur sur Internet permettant d'offrir du contenu au
publique.

</div>
</div>
On interdit à tous l'accès dans **/etc/hosts.deny**:

``` {.bash}
------
ALL : ALL
------
```

On autorise seulement quelques machines dans **/etc/hosts.allow**:

``` {.bash}
------
sshd : 192.168.1.*
http : 192.168.1.*
------
```
