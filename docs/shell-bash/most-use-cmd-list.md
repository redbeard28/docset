Liste des commandes les plus utilisées
======================================


Introduction
------------

Cette page à pour but de jouer le rôle de pense bête sur les différentes
commandes sous Linux. Elle ne prétend en aucun cas regrouper toutes les
commandes, mais simplement les plus utilisées.

Tableaux récapitulatifs
-----------------------

  
   

Information Système
-------------------

```  {.bash}
arch
```

affiche l'architecture de la machine(1)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=arch)

``` {.bash} cal 2007 ```

affiche le calendrier de 2007  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cal)

``` {.bash} cat /proc/cpuinfo ```

affiche les informations CPU  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

``` {.bash} cat /proc/interrupts ```

affiche les interruptions  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

``` {.bash} cat /proc/meminfo ```

affiche la mémoire utilisée  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

``` {.bash} cat /proc/swaps ```

affiche le(s) fichier(s) swap  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

``` {.bash} cat /proc/version ```

affiche la version du kernel  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

``` {.bash} cat /proc/net/dev ```

affiche les périphériques réseau et leurs statistiques  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

``` {.bash} cat /proc/mounts ```

affiche le(s) système(s) de fichiers monté(s)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

``` {.bash} clock -w ```

sauvegarde la date et la change dans le BIOS  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=clock)

``` {.bash} date ```

affiche la date système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=date)

``` {.bash} date 041217002007.00 ```

fixe la date et l'heure - moisjourheuresminutesannée.secondes  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=date)

``` {.bash} dmidecode -q ```

affiche les composants hardware - (SMBIOS / DMI)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dmidecode)

``` {.bash} hdparm -i /dev/hda ```

affiche les caractéristiques du disque dur  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=hdparm)

``` {.bash} hdparm -tT /dev/sda ```

lance un test de lecture sur le disque dur  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=hdparm)

``` {.bash} lspci -tv ```

affiche les périphériques PCI  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=lspci)

``` {.bash} lsusb -tv ```

affiche les périphériques usb  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=lsusb)

``` {.bash} uname -m ```

affiche l'architecture de la machine (2)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=uname)

``` {.bash} uname -r ```

affiche la version du kernel  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=uname)


Arrêt, Redémarrage et Déconnexion du système
--------------------------------------------


``` {.bash} init 0 ```

arrêter le système (2)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=init)

``` {.bash} logout ```

libérer la session  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=logout)

``` {.bash} reboot ```

redémarrer (2)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=reboot)

``` {.bash} shutdown -h now ```

redémarrer maintenant  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=shutdown)

``` {.bash} shutdown -h 16:30 & ```

planifier l'arrêt du système à 16h30  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=shutdown)

``` {.bash} shutdown -c ```

annuler la planification d'un arrêt du système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=shutdown)

``` {.bash} shutdown -r now ```

redémarrer maintenant (1)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=shutdown)

``` {.bash} init 0 ```

arrêter le système (3)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=telinit)

  

Fichiers et Répertoires
-----------------------


``` {.bash} cd /home ```

entrer dans le répertoire '/home'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cd)

``` {.bash} cd .. ```

descendre d'un niveau dans l'arborescence  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cd)

``` {.bash} cd ../.. ```

descendre de deux niveaux dans l'arborescence  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cd)

``` {.bash} cd ```

aller dans le répertoire home  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cd)

``` {.bash} cd ~/ ```

entrer de le répertoire home de l'utilisateur user1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cd)

``` {.bash} cd - ```

aller dans le répertoire précédent  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cd)

``` {.bash} cp file1 file2 ```

copier le file1 en file2  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cp)

``` {.bash} cp dir/\* . ```

copier tous les fichiers d'un répertoire dans le répertoire de travail
en cours  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cp)

``` {.bash} cp -a /tmp/dir1 . ```

copier un répertoire dans le répertoire de travail en cours  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cp)

``` {.bash} cp -a dir1 dir2 ```

copier le répertoire dir1 en un autre dir2  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cp)

``` {.bash} cp file file1 ```

extrait le type mime du fichier file comme texte  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=file)

``` {.bash} iconv -l ```

liste les encodages connus  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iconv)

``` {.bash} iconv -f fromEncoding -t toEncoding inputFile \> outputFile ```

crée un nouveau fichier par ce qui donné par le fichier d'entrée en
supposant qu'il est encodé en fromEncoding et le converti à toEncoding  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iconv)

``` {.bash} find . -maxdepth 1 -name \*.jpg -print -exec convert ```

traitement qui redimensionne des fichiers dans le répertoire courant et
les envoie dans un répertoire thumbnails (requière convert de
Imagemagick)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iconv)

``` {.bash} ln -s file1 lnk1 ```

crée un lien symbolique à un fichier ou répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ln)

``` {.bash} ln file1 lnk1 ```

crée un lien physique à un fichier ou répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ln)

``` {.bash} ls ```

visualise les fichiers d'un répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ls)

``` {.bash} ls -F ```

visualise les fichiers d'un répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ls)

``` {.bash} ls -l ```

affiche les détails des fichiers et des répertoires  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ls)

``` {.bash} ls -a ```

affiche les fichiers cachés  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ls)

``` {.bash} ls \*[0-9]\* ```

affiche les fichiers et les répertoires qui contiennent des nombres  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ls)

``` {.bash} lstree ```

affiche les fichiers et les répertoires dans une arborescence qui
commence par la racine (2)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=lstree)

``` {.bash} mkdir dir1 ```

crée un répertoire appelé 'dir1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkdir)

``` {.bash} mkdir dir1 dir2 ```

crée deux répertoires simultanément  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkdir)

``` {.bash} mkdir -p /tmp/dir1/dir2 ```

crée un répertoire en arborescence  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkdir)

``` {.bash} mv dir1 new\_dir ```

renomme / déplace un fichier ou un répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mv)

``` {.bash} pwd ```

affiche le chemin du répertoire courant  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=pwd)

``` {.bash} rm -f file1 ```

supprime le fichier nommé 'file1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rm)

``` {.bash} rm -rf dir1 ```

supprime le répertoire nommé 'dir1' et son contenu récursivement  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rm)

``` {.bash} rm -rf dir1 dir2 ```

supprime deux répertoires et leurs contenus récursivement  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rm)

``` {.bash} rmdir dir1 ```

supprime le répertoire appelé 'dir1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rmdir)

``` {.bash} touch -t 0712250000 file1 ```

modifie la date d'un fichier ou d'un répertoire (AAMMJJhhmm)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=touch)

``` {.bash} tree ```

affiche les fichiers et les répertoires dans une arborescence qui
commence par la racine (1)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tree)

  

Recherche de fichier
--------------------


\# find / -name file1

cherche un fichier ou un répertoire à l'intérieur du système depuis '/'
 
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=find)

\# find / -user user1

cherche des fichiers ou des répertoires appartenant à 'user1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=find)

\# find /home/user1 -name \\\*.bin

cherche des fichiers ou des répertoires avec l'extension '.bin' à
l'intérieur du répertoire '/home/user1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=find)

\# find /usr/bin -type f -atime +100

cherche des fichiers binaires qui ne sont pas utilisés depuis plus de
100 jours  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=find)

\# find /usr/bin -type f -mtime -10

cherche des fichiers créés ou changés depuis 10 jours  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=find)

\# find / -name \*.rpm -exec chmod 755 '{}' \\;

cherche des fichiers avec l'extension '.rpm' et modifie leurs
permissions  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=find)

\# find / -xdev -name \\\*.rpm

cherche des fichiers avec l'extension '.rpm' en ignorant les partitions
amovibles comme les cd-rom, clé, etc...  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=find)

\# locate \\\*.ps

trouve des fichiers avec l'extension '.ps' - en premier lancer la
commande 'updatedb'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=locate)

\# whereis halt

affiche l'emplacement des fichiers binaires, source ou man  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=whereis)

\# which halt

affiche le chemin complet des binaires / exécutables  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=which)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Montage de système de fichiers
------------------------------

**Commande**

**Description**

\# fuser -km /mnt/hda2

force le démontage quand le périphérique est occupé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=fuser)

\# mount /dev/hda2 /mnt/hda2

monte un disque nommé hda2 - vérifie l'existence du répertoire
'/mnt/hda2'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# mount /dev/fd0 /mnt/floppy

monte un lecteur de disquettes  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# mount /dev/cdrom /mnt/cdrom

monte un cdrom / dvdrom  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# mount /dev/hdc /mnt/cdrecorder

monte un cdrw / dvdrom  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# mount /dev/hdb /mnt/cdrecorder

monte un cdrw / dvdrom  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# mount -o loop file.iso /mnt/cdrom

monte une image d'un fichier iso  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# mount -t vfat /dev/hda5 /mnt/hda5

monte un système de fichiers Windows FAT32  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# mount /dev/sda1 /mnt/usbdisk

monte une clé usb ou un lecteur mémoire flash  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# mount -t smbfs -o username=user,password=pass //WinClient/share
/mnt/share

monte un partage réseau Windows  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# umount /dev/hda2

démonte un disque appelé hda2 - d'abord sortie du point de montage
'/mnt/hda2'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=umount)

\# umount -n /mnt/hda2

lance le démontage sans l'écriture du fichier /etc/mtab - Utile quand le
fichier est en lecture seule ou que le disque dur est plein  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=umount)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Espace Disque
-------------

**Commande**

**Description**

\# df -h

affiche la liste des partitions montées et leur espace libre  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=df)

\# dpkg-query -W -f='\${Installed-Size;10}t\${Package}n' | sort -k1,1n

affiche l'espace utilisé par le paquets deb installés, triés par taille
(debian, ubuntu, et autres)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

\# du -sh dir1

estime l'espace disque utilisé par le répertoire 'dir1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=du)

\# du -sk \* | sort -rn

affiche la taille des fichiers et des répertoires triés par taille  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=du)

\# ls -lSr |more

affiche la taille des fichiers et des répertoires ordonnés par taille  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ls)

\# rpm -q -a --qf '%10{SIZE}t%{NAME}n' | sort -k1,1n

affiche l'espace utilisé par les paquets rpm installés triés par taille
(fedor, redhat, et identiques)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Utilisateurs et Groupes
-----------------------

**Commande**

**Description**

\# chage -E 2005-12-31 user1

fixe une date limite du mot de passe de l'utilisateur 'user1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chage)

\# groupadd [group]

crée un nouveau groupe  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=groupadd)

\# groupdel [group]

supprime un groupe  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=groupdel)

\# groupmod -n moon sun

renomme le groupe moon en groupe sun  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=groupmod)

\# grpck

teste la syntaxe correcte et le format du fichier '/etc/group' et
l'existence des groupes  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=grpck)

\# newgrp - [group]

connexion à un nouveau groupe pour changer le groupe par défaut des
fichiers récemment créés  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=newgrp)

\# passwd

change le mot de passe  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=passwd)

\# passwd user1

change le mot de passe d'un utilisateur 'user1' (seulement par root)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=passwd)

\# pwck

teste la syntaxe correcte et le format du fichier '/etc/passwd' et
l'existence des utilisateurs  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=pwck)

\# useradd -c

crée un nouvel utilisateur "user1" appartenant au groupe "admin"  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=useradd)

\# useradd user1

crée un nouvel utilisateur  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=useradd)

\# userdel -r user1

supprime un utilisateur ('-r' élimine son répertoire home)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=userdel)

\# usermod -c

change les attributs d'un utilisateur  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=usermod)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Permissions sur les Fichiers
----------------------------

**Commande**

**Description**

\# chgrp group1 file1

change le groupe du fichier 'file1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chgrp)

\# chmod ugo+rwx directory1

fixe sur le répertoire 'directory1' les permissions de lecture (r),
écriture (w) et d'accès (x) aux utilisateurs propriétaires (u) groupe
(g) et autres (o)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chmod)

\# chmod go-rwx directory1

enlève sur le répertoire 'directory1' les permissions de lecture (r),
écriture (w) et d'accès (x) aux utilisateurs groupe (g) et autres (o)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chmod)

\# chmod u+s /bin/file1

fixe l'octet SUID sur un fichier binaire - l'utilisateur qui lance ce
fichier prend les mêmes privilèges que le propriétaire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chmod)

\# chmod u-s /bin/file1

ôte l'octet SUID sur un fichier binaire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chmod)

\# chmod g+s /home/public

fixe l'octet SGID sur un répertoire - similaire à un SUID mais pour un
répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chmod)

\# chmod g-s /home/public

désactive l'octet SGID sur un répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chmod)

\# chmod o+t /home/public

fixe l'octet STIKY sur un répertoire - permet la suppression de fichiers
seulement aux propriétaires légitimes  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chmod)

\# chmod o-t /home/public

désactive l'octet STIKY sur un répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chmod)

\# chown user1 file1

change le propriétaire d'un ficher  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chown)

\# chown -R user1 directory1

change l'utilisateur propriétaire d'un répertoire et de tous les
fichiers et répertoires qui y sont contenus  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chown)

\# chown user1:group1 file1

change l'utilisateur et le groupe de la propriété d'un fichier  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chown)

\# find / -perm -u+s

voir tous les fichiers sur le système avec le SUID configuré  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=find)

\# ls -lh

affiche les permissions des fichiers  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ls)

\# ls /tmp | pr -T5 -W\$COLUMNS

divise le terminal en 5 colonnes  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ls)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Attributs Spéciaux sur les Fichies
----------------------------------

**Commande**

**Description**

\# chattr +a file1

permet d'ouvrir un fichier en écriture seulement en mode ajout  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chattr)

\# chattr +c file1

permet que ce fichier soit compressé / décompressé automatiquement par
le noyau  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chattr)

\# chattr +d file1

assure que le programme ignore les fichiers Dump pendant la sauvegarde  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chattr)

\# chattr +i file1

assure que le fichier est immuable, lequel ne peut être supprimé,
altéré, renommé ou lié  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chattr)

\# chattr +s file1

permet au fichier d'être supprimé en toute sécurité  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chattr)

\# chattr +S file1

assure que si le fichier est modifié les changements sont écrits en mode
asynchrone avec sync  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chattr)

\# chattr +u file1

vous permet de récupérer les contenus d'un fichier même s'il a été
supprimé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chattr)

\# lsattr

affiche les attributs spéciaux  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=lsattr)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Archives et fichiers compressés
-------------------------------

**Commande**

**Description**

\# bunzip2 file1.bz2

décompresse un fichier nommé 'file1.bz2'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=bunzip2)

\# bzip2 file1

compresse un fichier nommé 'file1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=bzip2)

\# gunzip file1.gz

décompresse un fichier nommé 'file1.gz'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=gunzip)

\# gzip file1

compresse un fichier nommé 'file1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=gzip)

\# gzip -9 file1

compresse avec un maximum de compression  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=gzip)

\# rar a file1.rar test\_file

crée une archive rar nommée 'file1.rar du fichier test\_file  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rar)

\# rar a file1.rar file1 file2 dir1

compresse 'file1', 'file2' et 'dir1' simultanément  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rar)

\# rar x file1.rar

décompresse une archive rar  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rar)

\# tar -cvf archive.tar file1

crée un tarball non compressé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar -cvf archive.tar file1 file2 dir1

crée une archive contenant 'file1', 'file2' et 'dir1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar -tf archive.tar

affiche le contenu d'une archive  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar -xvf archive.tar

extrait un tarball  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar -xvf archive.tar -C /tmp

extrait un tarball dans /tmp  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar -cvfj archive.tar.bz2 dir1

crée un tarball compressé dans bzip2  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar -xvfj archive.tar.bz2

décompresse une archive tar dans bzip2  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar -cvfz archive.tar.gz dir1

crée un tarball compressé dans gzip  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar -xvfz archive.tar.gz

décompresse une archive compressée tar dans gzip  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# unrar x file1.rar

décompresse une archive rar  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=unrar)

\# unzip file1.zip

décompresse une archive zip  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=unzip)

\# zip file1.zip file1

crée une archive compressée en zip  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=zip)

\# zip -r file1.zip file1 file2 dir1

compresse en zip plusieurs fichiers et répertoires simultanément  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=zip)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Paquets RPM ( Fedora, Red Hat et autres)
----------------------------------------

**Commande**

**Description**

\# rpm -ivh [package.rpm]

installe un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -ivh --nodeeps [package.rpm]

installe un paquet rpm en ignorant les requêtes de dépendance  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -U [package.rpm]

met à jour un paquet rpm sans changer les fichiers de configuration  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -F [package.rpm]

met à jour un paquet rpm seulement s'il est déjà installé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -e [package]

supprime un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -qa

affiche tous les paquets rpm installés sur le système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -qa | grep httpd

affiche tous les paquets avec le nom contenant "httpd"  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -qi [package]

obtient les informations d'un paquet spécifique installé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -qg

affiche les paquets rpm d'un groupe de programme  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -ql [package]

affiche la liste des fichiers produits par un paquet installé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -qc [package]

affiche la liste des fichiers de configuration produits par un paquet
rpm installé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -q [package] --whatrequires

affiche la liste des dépendances requises pour un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -q [package] --whatprovides

affiche les possibilités fournies par un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -q [package] --scripts

affiche les scripts lancés pendant l'installation et la suppression  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -q [package] --changelog

affiche l'historique des révisions d'un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -qf /etc/httpd/conf/httpd.conf

vérifie à quel paquet rpm appartient un fichier donné  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -qp [package.rpm] -l

affiche la liste produite par un paquet rpm non installé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm --import /media/cdrom/RPM-GPG-KEY

importe la signature digitale clé-publique  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm --checksig [package.rpm]

vérifie l'intégrité d'un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -qa gpg-pubkey

vérifie l'intégrité de tous les paquets rpm installés  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -V [package]

teste la taille du fichier, les permissions, le type, le propriétaire,
le groupe, la somme de contrôle MD5 et la dernière modification  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -Va

teste tous les paquets rpm installés sur le système - à utiliser avec
précaution  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -Vp [package.rpm]

vérifie un paquet rpm non encore installé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm -ivh /usr/src/redhat/RPMS/\`arch\`/[package.rpm]

installe un paquet construit à partir de la source du rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm)

\# rpm2cpio [package.rpm] | cpio --extract --make-directories \*bin\*

extrait le fichier exécutable d'un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpm2cpio)

\# rpmbuild --rebuild [package.src.rpm]

construit un paquet rpm depuis la source rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rpmbuild)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

utilitaire de paquets YUM (Fedora, RedHat et autres)
----------------------------------------------------

**Commande**

**Description**

\# yum -y install [package]

télécharge et installe un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum localinstall [package.rpm]

cela installera un RPM, et tentera de résoudre toutes les dépendance
pour vous en utilisant votre dépôt  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum -y update

met à jour tous les paquets rpm installés sur le système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum update [package]

met à jour un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum remove [package]

enlève un paquet rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum list

liste tous les paquets installés sur le système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum search [package]

trouve le paquet sur le dépôt rpm  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum clean [package]

nettoie le cache rpm et supprimant les paquets téléchargés  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum clean headers

supprime toutes les entêtes des fichiers que le système utilise pour
résoudre les dépendances  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

\# yum clean all

supprime le cache des paquets et les entêtes des fichiers  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=yum)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Paquets DEB (Debian, Ubuntu et autres)
--------------------------------------

**Commande**

**Description**

\# dpkg -i [package.deb]

installe / met à jour un paquet deb  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

\# dpkg -r [package]

supprime un paquet deb du système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

\# dpkg -l

affiche tous les paquets deb installés sur le système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

\# dpkg -l | grep httpd

affiche tous les paquets deb contenant le mot "httpd"  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

\# dpkg -s [package]

obtient l'information d'un paquet spécifique installé sur le système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

\# dpkg -L [package]

affiche la liste des fichiers fournis par un paquet installé sur le
système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

\# dpkg --contents [package.deb]

affiche la liste des fichiers fournis par un paquet non encore installé
 
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

\# dpkg -S /bin/ping

vérifie à quel paquet appartient un fichier donné  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dpkg)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Utilitaire Paquets APT (Debian, Ubuntu et autres)
-------------------------------------------------

**Commande**

**Description**

\# apt-cache search [package]

retourne la liste de paquets qui correspond à la chaîne de caractères
"package"  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apt-cache)

\# apt-cdrom install [package]

installe / met à jour un paquet deb depuis un cd-rom  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apt-cdrom)

\# apt-get install [package]

installe / met à jour un paquet deb  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apt-get)

\# apt-get update

met à jour la liste des paquets  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apt-get)

\# apt-get upgrade

met à jour tous les paquets installés  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apt-get)

\# apt-get remove [package]

supprime un paquet deb du système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apt-get)

\# apt-get check

vérifie que la résolution des dépendances soit correcte  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apt-get)

\# apt-get clean

nettoie le cache des paquets téléchargés  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apt-get)

  

                                 </td>

                               </tr>

                               <tr>

                                 <td> « <a href="#TOP">HAUT</a> &laqulaquo;</td>

                               </tr>

\<tr\>

                                 <td height="8"></td>

                               </tr>

  

                               <tr>

\<td align="center"\>

\<a id="28" name="28"\>\</a\>

  

utilitaire Paquets Pacman (Arch, Frugalware et autres)
------------------------------------------------------

**Commande**

**Description**

\# pacman -S name

installe le paquet 'name' avec ses dépendances  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=pacman)

\# pacman -R name

supprime le paquet 'name' et tous les fichiers qui vont avec  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=pacman)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Voir le contenu d'un fichier
----------------------------

**Commande**

**Description**

\# cat file1

voit le contenu d'un fichier depuis la première ligne  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

\# head -2 file1

voit les deux premières lignes d'un fichier  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=head)

\# less file1

similaire à la commande 'more' mais permet les mouvements avancer et
reculer dans le fichier  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=less)

\# more file1

voit le contenu d'un fichier page par page  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=more)

\# tac file1

voit le contenu d'un fichier en commençant par la dernière ligne  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tac)

\# tail -2 file1

voit les deux dernières lignes d'un fichier  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tail)

\# tail -f /var/log/messages

vue en temps réel de ce qui est ajouté au fichier  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tail)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Manipulation de Texte
---------------------

**Commande**

**Description**

\# cat example.txt | awk 'NR%2==1'

enlève toutes les lignes identiques de example.txt  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=awk)

\# echo a b c | awk '{print \$1}'

voit la première colonne d'une ligne  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=awk)

\# echo a b c | awk '{print \$1,\$3}'

voit la première et la troisième colonne d'une ligne  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=awk)

\# cat -n file1

dénombre les lignes d'un fichier  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cat)

\# comm -1 file1 file2

compare les contenus de deux fichiers par suppression des lignes uniques
du 'file1'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=comm)

\# comm -2 file1 file2

compare les contenus de deux fichiers par suppression des lignes uniques
du 'file2'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=comm)

\# comm -3 file1 file2

compare les contenus de deux fichiers par suppression des lignes uniques
des deux fichiers  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=comm)

\# diff file1 file2

trouve les différences entre deux fichiers  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=diff)

\# grep Aug /var/log/messages

cherche le mot "Aug" dans le fichier '/var/log/messages'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=grep)

\# grep \^Aug /var/log/messages

cherche les mots qui commencent par "Aug" dans le fichier
'/var/log/messages'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=grep)

\# grep [0-9] /var/log/messages

sélectionne dans le fichier '/var/log/messages' toutes les lignes qui
contiennent des nombres  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=grep)

\# grep Aug -R /var/log/\*

cherche la chaîne de caractères "Aug" dans le répertoire '/var/log' et
en dessous  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=grep)

\# paste file1 file2

fusionne les contenus des deux fichiers en colonnes  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=paste)

\# paste -d '+' file1 file2

fusionne les contenus des deux fichiers en deux colonnes avec le
délimiteur '+' au centre  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=paste)

\# sdiff file1 file2

trouve les différences entre deux fichiers et ajoute interactivement de
façon semblable à "diff"  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sdiff)

\# sed 's/string1/string2/g' example.txt

remplace "string1" par "string2" dans example.txt  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed '/\^\$/d' example.txt

enlève toutes les lignes vides dans example.txt  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed '/ \*\#/d; /\^\$/d' example.txt

enlève les commentaires et les lignes vides dans example.txt  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed -e '1d' exampe.txt

élimine la première ligne du fichier example.txt  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed -n '/string1/p'

vue seulement des lignes qui contiennent le mot "string1"  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed -e 's/ \*\$//' example.txt

supprime les caractères vides à la fin de chaque ligne  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed -e 's/string1//g' example.txt

supprime seulement le mot "string1" du texte et laisse le reste intact  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed -n '1,5p' example.txt

imprime de la première à la cinquième ligne du fichier example.txt  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed -n '5p;5q' example.txt

imprime la ligne numéro 5 du fichier example.txt  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sed -e 's/00\*/0/g' example.txt

remplace les séries de 0 par un seul zéro  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sed)

\# sort file1 file2

classe les contenus des deux fichiers  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sort)

\# sort file1 file2 | uniq

classe les contenus des deux fichiers en omettant les lignes répétées  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sort)

\# sort file1 file2 | uniq -u

classe les contenus des deux fichiers par la vue seulement de ligne
unique  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sort)

\# sort file1 file2 | uniq -d

classe les contenus des deux fichiers par la vue seulement de ligne
dupliquée  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=sort)

\# echo 'word' | tr '[:lower:]' '[:upper:]'

convertit la casse minuscule en casse majuscule  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tr)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Fixer les caractères et Format de conversion de fichier
-------------------------------------------------------

**Commande**

**Description**

\# dos2unix filedos.txt fileunix.txt

convertit un fichier texte au format MSDOS au format UNIX  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dos2unix)

\# recode ..HTML \< page.txt \> page.html

convertit un fichier texte en html  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=recode)

\# recode -l | more

affiche tous les formats disponibles de conversion  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=recode)

\# unix2dos fileunix.txt filedos.txt

convertit un fichier texte au format UNIX au format MSDOS  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=unix2dos)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Analyse de système de fichiers
------------------------------

**Commande**

**Description**

\# badblocks -v /dev/hda1

teste les mauvais blocs sur le disque hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=badblocks)

\# dosfsck /dev/hda1

répare / teste l'intégrité d'un système de fichiers dos sur le disque
hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dosfsck)

\# e2fsck /dev/hda1

répare / teste l'intégrité d'un système de fichiers ext2 sur le disque
hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=e2fsck)

\# e2fsck -j /dev/hda1

répare / teste l'intégrité d'un système de fichiers ext3 sur le disque
hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=e2fsck)

\# fsck /dev/hda1

répare / teste l'intégrité d'un système de fichiers linux sur le disque
hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=fsck)

\# fsck.ext2 /dev/hda1

répare / teste l'intégrité d'un système de fichiers ext2 sur le disque
hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=fsck)

\# fsck.ext3 /dev/hda1

répare / teste l'intégrité d'un système de fichiers ext3 sur le disque
hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=fsck)

\# fsck.vfat /dev/hda1

répare / teste l'intégrité d'un système de fichiers fat sur le disque
hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=fsck)

\# fsck.msdos /dev/hda1

répare / teste l'intégrité d'un système de fichiers dos sur le disque
hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=fsck)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Formater un système de fichiers
-------------------------------

**Commande**

**Description**

\# fdformat -n /dev/fd0

formate une disquette  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=fdformat)

\# mke2fs /dev/hda1

crée un système de fichiers de type linux ext2 sur la partition hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mke2fs)

\# mke2fs -j /dev/hda1

crée un système de fichiers de type linux ext3 (journal) sur la
partition hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mke2fs)

\# mkfs /dev/hda1

crée un système de fichiers de type linux sur la partition hda1  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkfs)

\# mkfs -t vfat 32 -F /dev/hda1

crée un système de fichiers FAT32  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkfs)

\# mkswap /dev/hda3

crée un système de fichiers swap  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkswap)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

système de fichiers SWAP
------------------------

**Commande**

**Description**

\# mkswap /dev/hda3

crée un système de fichiers swap  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkswap)

\# swapon /dev/hda3

activation d'une nouvelle partition swap  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=swapon)

\# swapon /dev/hda2 /dev/hdb3

active deux partitions swap  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=swapon)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Sauvegarde
----------

**Commande**

**Description**

\# find /var/log -name '\*.log' | tar cv --files-from=- | bzip2 \>
log.tar.bz2

trouve tous les fichiers avec l'extension '.log' et fabrique une archive
en bzip  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=bzip2)

\# find /home/user1 -name '\*.txt' | xargs cp -av
--target-directory=/home/backup/ --parents

trouve et copie tous les fichiers avec l'extension '.txt' d'un
répertoire à un autre  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cp)

\# dd bs=1M if=/dev/hda | gzip | ssh user@ip\_addr 'dd of=hda.gz'

fabrique une sauvegarde d'un disque dur local sur un hôte distant via
ssh  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dd)

\# dd if=/dev/sda of=/tmp/file1

sauvegarde le contenu d'un disque dur dans un fichier  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dd)

\# dd if=/dev/hda of=/dev/fd0 bs=512 count=1

crée une copie du MBR sur une disquette  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dd)

\# dd if=/dev/fd0 of=/dev/hda bs=512 count=1

restaure le MBR d'une copie de sauvegardée sur une disquette  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dd)

\# dump -0aj -f /tmp/home0.bak /home

fabrique une sauvegarde complète du répertoire '/home'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dump)

\# dump -1aj -f /tmp/home0.bak /home

fabrique une sauvegarde incrémentielle (différentielle) du répertoire
'/home'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dump)

\# restore -if /tmp/home0.bak

restaure une sauvegarde interactivement  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=restore)

\# rsync -rogpav --delete /home /tmp

synchronisation entre répertoires  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rsync)

\# rsync -rogpav -e ssh --delete /home ip\_address:/tmp

synchronisation via un tunnel SSH  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rsync)

\# rsync -az -e ssh --delete ip\_addr:/home/public /home/local

synchronise un répertoire local avec un répertoire distant via ssh et
compression  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rsync)

\# rsync -az -e ssh --delete /home/local ip\_addr:/home/public

synchronise un répertoire distant avec un répertoire local via ssh et
compression  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=rsync)

\# tar -Puf backup.tar /home/user

fabrique une sauvegarde incrémentielle du répertoire '/home/user'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# ( cd /tmp/local/ && tar c . ) | ssh -C user@ip\_addr 'cd /home/share/
&& tar x -p'

copie le contenu d'un répertoire sur un répertoire distant via ssh  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# ( tar c /home ) | ssh -C user@ip\_addr 'cd /home/backup-home && tar x
-p'

copie un répertoire local sur un répertoire distant via ssh  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

\# tar cf - . | (cd /tmp/backup ; tar xf - )

copie locale en préservant les permissions et les liens d'un répertoire
vers un autre  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tar)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

CDROM
-----

**Commande**

**Description**

\# cd-paranoia -B

ripe les pistes audio d'un CD en fichiers wav  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cd-paranoia)

\# cd-paranoia --

ripe les trois premières pistes audio d'un CD en fichiers wav  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cd-paranoia)

\# cdrecord -v gracetime=2 dev=/dev/cdrom -eject blank=fast -force

efface un cdrom ré-inscriptible  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cdrecord)

\# cdrecord -v dev=/dev/cdrom cd.iso

grave un cdrom à partir d'une image iso  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cdrecord)

\# gzip -dc cd\_iso.gz | cdrecord dev=/dev/cdrom -

grave un cdrom à partir d'une image iso compressée  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cdrecord)

\# cdrecord --scanbus

scanne le bus pour identifier le canal scsi  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=cdrecord)

\# dd if=/dev/hdc | md5sum

fabrique une somme de contrôle md5sum d'un périphérique, comme un CD  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=md5sum)

\# mkisofs /dev/cdrom \> cd.iso

crée une image iso d'un cdrom sur un disque  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkisofs)

\# mkisofs /dev/cdrom | gzip \> cd\_iso.gz

crée une image iso compressée d'un cdrom sur un disque  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkisofs)

\# mkisofs -J -allow-leading-dots -R -V

crée une image iso d'un répertoire  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkisofs)

\# mount -o loop cd.iso /mnt/iso

monte une image iso  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Réseau (LAN / WiFi)
-------------------

**Commande**

**Description**

\# dhclient eth0

active l'interface réseau 'eth0' en mode dhcp  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=dhclient)

\# ethtool eth0

affiche les statistiques réseau de eth0  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ethtool)

\# host www.example.com

consulte le hostname pour résoudre le nom en adresse ip et vice versa  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=host)

\# hostname

affiche le hostname du système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=hostname)

\# ifconfig eth0

affiche la configuration Ethernet de la carte réseau eth0  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ifconfig)

\# ifconfig eth0 192.168.1.1 netmask 255.255.255.0

configure l'adresse IP de eth0  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ifconfig)

\# ifconfig eth0 promisc

configure 'eth0' en mode confus pour rassembler des paquets (sniffing)  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ifconfig)

\# ifdown eth0

désactive l'interface 'eth0'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ifdown)

\# ifup eth0

active l'interface 'eth0'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ifup)

\# ip link show

affiche le statut du lien de toutes les interfaces réseau  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ip)

\# iwconfig eth1

affiche les réseaux sans fil  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iwconfig)

\# iwlist scan

scanne le wifi pour afficher les connections sans fil disponibles  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iwlist)

\# mii-tool eth0

affiche les statuts des liens 'eth0'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mii-tool)

\# netstat -tup

affiche toutes les connections actives et leur PID  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=netstat)

\# netstat -tupl

affiche tous les services réseau écoutés sur le système et leur PID  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=netstat)

\# netstat -rn

montre la table de routage de façon semblable à "route -n"  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=netstat)

\# nslookup www.example.com

consulte le hostname pour résoudre le nom en adresse ip et vice versa  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=nslookup)

\# route -n

affiche la table de routage  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=route)

\# route add -net 0/0 gw IP\_Gateway

configure la passerelle par défaut  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=route)

\# route add -net 192.168.0.0 netmask 255.255.0.0 gw 192.168.1.1

configure la route statique pour l'étendue réseau '192.168.0.0/16'  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=route)

\# route del 0/0 gw IP\_gateway

enlève la route statique  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=route)

\# echo

active le routage ip  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=route)

\# tcpdump tcp port 80

affiche tous les trafics http  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tcpdump)

\# whois www.example.com

consulte la base de donnée whois  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=whois)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Réseau Microsoft Windows (samba)
--------------------------------

**Commande**

**Description**

\# mount -t smbfs -o username=user,password=pass //WinClient/share
/mnt/share

monte un partage réseau Windows  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mount)

\# nbtscan ip\_addr

résolution de nom netbios  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=nbtscan)

\# nmblookup -A ip\_addr

résolution de nom netbios  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=nmblookup)

\# smbclient -L ip\_addr/hostname

affiche les partages distants d'un hôte windows  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=smbclient)

\# smbget -Rr smb://ip\_addr/share

comme wget peut télécharger des fichiers depuis un hôte windows via smb
 
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=smbget)

  

                                 </td>

                               </tr>

                               <tr>

                                 <td> « <a href="#TOP">HAUT</a> «laquo;</td>

                               </tr>

\<tr\>

                                 <td height="8"></td>

                               </tr>

  

                               <tr>

\<td align="center"\>

\<a id="25" name="25"\>\</a\>

  

IPTABLES (firewall)
-------------------

**Commande**

**Description**

\# iptables -t filter -L

affiche toutes les chaînes de la table de filtrage  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t nat -L

affiche toutes les chaînes de la table nat  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t filter -F

efface toutes les règles de la table de filtrage  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t nat -F

efface toutes les règles de la table nat  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t filter -X

supprime toutes les chaînes crées par un utilisateur  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t filter -A INPUT -p tcp --dport telnet -j ACCEPT

autorise les connexions telnet en entrée &nbspnbsp;
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t filter -A OUTPUT -p tcp --dport http -j DROP

bloque les connexions http en sortie  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t filter -A FORWARD -p tcp --dport pop3 -j ACCEPT

autorise les connexions POP3 aux chaînes avancées  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t filter -A INPUT -j LOG --log-prefix

connexion sur la chaîne d'entrée  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

configure un PAT (Port Address Translation) sur eth0 en masquant les
paquets sortants  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

\# iptables -t nat -A PREROUTING -d 192.168.0.1 -p tcp -m tcp --dport 22
-j DNAT --to-destination 10.0.0.2:22

redirige les paquets adressés d'un hôte à un autre hôte  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=iptables)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Surveillance et debugage
------------------------

**Commande**

**Description**

\# free -m

affiche les statuts de la RAM en mégaoctets  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=free)

\# kill -9 process\_id

force la fermeture d'un processus et le termine  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=kill)

\# kill -1 process\_id

force un processus à recharger sa configuration  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=kill)

\# last reboot

affiche l'historique du redémarrage  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=last)

\# lsmod

affiche le kernel chargé  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=lsmod)

\# lsof -p process\_id

affiche la liste des fichiers ouverts par le processus  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=lsof)

\# lsof /home/user1

affiche la liste des fichiers ouverts sur un chemin donné  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=lsof)

\# ps -eafw

affiche les tâches linux  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ps)

\# ps -e -o pid,args --forest

affiche les tâches linux dans un mode hiérarchique  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ps)

\# pstree

montre les processus du système sous forme d'arborescence  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=pstree)

\# smartctl -A /dev/hda

surveille avec précision un disque dur à travers SMART  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=smartctl)

\# smartctl -i /dev/hda

teste si SMART est actif sur un disque dur  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=smartctl)

\# strace -c ls \>/dev/null

affiche les appels système venant et reçus par un processus  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=strace)

\# strace -f -e open ls \>/dev/null

affiche la bibliothèque des appels  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=strace)

\# tail /var/log/dmesg

affiche les évènements inhérents aux processus de démarrage du kernel  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tail)

\# tail /var/log/messages

affiche les évènements système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=tail)

\# top

affiche les tâches linux qui utilisent le plus le CPU  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=top)

\# watch -n1 'cat /proc/interrupts'

affiche les interruptions en temps réel  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=watch)

 **«** \<a href="\#TOP"\>**HAUT**\</a\> **«**

  

Autres commandes utiles
-----------------------

**Commande**

**Description**

\# alias hh='history'

fixe un alias pour la commande hh = history  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=alias)

\# apropos ...keyword

affiche la liste des commandes qui contient le mot-clé d'un programme,
utile quand vous savez ce que la programme doit faire, mais que vous
n'en connaissez pas le nom de la commande  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=apropos)

\# chsh

commande de changement de shell  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chsh)

\# chsh --list-shells

jolie commande pour savoir si vous avez une connexion distante dans une
autre boite  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=chsh)

\# gpg -c file1

crypte un fichier avec GNU Privacy Guard  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=gpg)

\# gpg file1.gpg

décrypte un fichier avec GNU Privacy Guard  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=gpg)

\# ldd /usr/bin/ssh

affiche les librairies partagées requises par le programme ssh  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=ldd)

\# man ping

affiche les pages d'aide en ligne par exemple la commande ping -
utiliser l'option '-k' pour trouver les commandes en relation  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=man)

\# mkbootdisk --device /dev/fd0 \`uname -r\`

crée une disquette bootable  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=mkbootdisk)

\# wget -r www.example.com

télécharge entièrement le site web  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=wget)

\# wget -c www.example.com/file.iso

télécharge un fichier avec la possibilité d'arrêter le téléchargement et
le reprendre plus tard  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=wget)

\# echo 'wget -c www.example.com/files.iso' | at 09:00

démarre un téléchargement à une heure donnée  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=wget)

\# whatis ...keyword

affiche la description de ce que le programme fait  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=whatis)

\# who -a

affiche qui est connecté, et imprime : l'heure du dernier redémarrage,
les processus morts, les processus de connexion système, les Processus
actifs générés par init, le runlevel courant, le dernier changement de
l'horloge système  
[man](http://www.linuxguide.it/command_line/linux-manpage/do.php?file=who)

Sources:

[Linuxguit.it](http://www.linuxguide.it/command_line/linux_commands_fr.html)

Récupérée de
« [https://knowledge.redbeard-consulting.fr/index.php?title=Liste\_des\_commandes\_les\_plus\_utilisées&oldid=146](https://knowledge.redbeard-consulting.fr/index.php?title=Liste_des_commandes_les_plus_utilisées&oldid=146) »


