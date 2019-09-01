Commandes grep
==============

Introduction
------------

La commande grep permet de rechercher une chaîne de caractères dans un
fichier. Les options sont les suivantes :

-   **-v** affiche les lignes ne contenant pas la chaîne
-   **-c** compte le nombre de lignes contenant la chaîne
-   **-n** chaque ligne contenant la chaîne est numérotée
-   **-x** ligne correspondant exactement à la chaîne
-   **-l** affiche le nom des fichiers qui contiennent la chaîne

Rechercher un mot dans un fichier
---------------------------------

    grep mot /tmp/toto.txt

Trouver un mot dans un répertoire contenant plusieurs fichiers
--------------------------------------------------------------

    grep mot /tmp/*

Trouver un mot dans un répertoire contenant plusieurs fichiers et sous répertoires
----------------------------------------------------------------------------------

    grep -R mot /tmp/*

Premier Exemple
---------------

Je dois rechercher toutes les adresses IP qui ont tenté de se connecter
sur mon VPS tout en excluant des résultats l'ip 43.229.53.87.

    grep refused /var/log/secure |grep -v "43.229.53.87"

-   Résultat:

<!-- -->

    [root@lune log]# grep refused /var/log/secure|grep -v 43.229.53.87
    Nov 29 04:27:24 lune sshd[14488]: refused connect from 125.72.14.114 (125.72.14.114)
    Nov 29 07:45:19 lune sshd[14747]: refused connect from 61.149.215.14 (61.149.215.14)
    Nov 29 08:11:43 lune sshd[14777]: refused connect from 123.151.42.61 (123.151.42.61)
    Nov 29 08:39:25 lune sshd[14849]: refused connect from 112.33.8.16 (112.33.8.16)
    Nov 29 19:35:40 lune sshd[15474]: refused connect from 59.45.79.50 (59.45.79.50)
    Nov 29 20:11:21 lune sshd[15515]: refused connect from 123.151.42.61 (123.151.42.61)
    Nov 29 20:11:24 lune sshd[15522]: refused connect from 123.151.42.61 (123.151.42.61)
    Nov 29 20:11:25 lune sshd[15529]: refused connect from 123.151.42.61 (123.151.42.61)
    Nov 29 20:11:29 lune sshd[15536]: refused connect from 123.151.42.61 (123.151.42.61)
    Nov 29 23:46:21 lune sshd[15758]: refused connect from 59.56.110.68 (59.56.110.68)
    Nov 29 23:46:29 lune sshd[15765]: refused connect from 59.56.110.68 (59.56.110.68)
    Nov 29 23:46:38 lune sshd[15772]: refused connect from 59.56.110.68 (59.56.110.68)
    Nov 29 23:47:11 lune sshd[15779]: refused connect from 59.56.110.68 (59.56.110.68)
    Nov 29 23:47:20 lune sshd[15786]: refused connect from 59.56.110.68 (59.56.110.68)
    Nov 29 23:47:29 lune sshd[15793]: refused connect from 59.56.110.68 (59.56.110.68)
    Nov 29 23:47:38 lune sshd[15800]: refused connect from 59.56.110.68 (59.56.110.68)

j'ai refusé que le lignes suivantes apparaissent:

    [root@lune log]# grep refused /var/log/secure|grep 43.229.53.87
    Nov 29 04:16:11 lune sshd[14422]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 04:54:53 lune sshd[14524]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 05:51:20 lune sshd[14569]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 07:01:14 lune sshd[14629]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 07:39:20 lune sshd[14648]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 08:33:43 lune sshd[14792]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 09:43:21 lune sshd[14919]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 10:21:23 lune sshd[14963]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 11:15:15 lune sshd[15008]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 12:25:33 lune sshd[15064]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 13:07:49 lune sshd[15105]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 14:50:03 lune sshd[15184]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 16:16:11 lune sshd[15248]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 16:49:19 lune sshd[15267]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 16:58:29 lune sshd[15281]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 17:51:30 lune sshd[15365]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 18:46:48 lune sshd[15413]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 19:59:05 lune sshd[15489]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 20:54:35 lune sshd[15562]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 21:47:58 lune sshd[15614]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 22:26:48 lune sshd[15658]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 29 23:30:50 lune sshd[15704]: refused connect from 43.229.53.87 (43.229.53.87)
    Nov 30 00:23:52 lune sshd[16251]: refused connect from 43.229.53.87 (43.229.53.87)
    [...]
    Dec  4 07:32:47 lune sshd[26916]: refused connect from 43.229.53.87 (43.229.53.87)
    Dec  4 08:43:04 lune sshd[27004]: refused connect from 43.229.53.87 (43.229.53.87)
    Dec  4 09:56:26 lune sshd[27058]: refused connect from 43.229.53.87 (43.229.53.87)
    Dec  4 10:36:38 lune sshd[27109]: refused connect from 43.229.53.87 (43.229.53.87)
    Dec  4 11:25:38 lune sshd[27217]: refused connect from 43.229.53.87 (43.229.53.87)
    Dec  4 12:16:49 lune sshd[27282]: refused connect from 43.229.53.87 (43.229.53.87)
    Dec  4 13:07:51 lune sshd[27349]: refused connect from 43.229.53.87 (43.229.53.87)
    Dec  4 13:59:41 lune sshd[27422]: refused connect from 43.229.53.87 (43.229.53.87)

Oui je sais, ça en fait des tentatives d'intrusions. Pour éviter cela
c'est par ici => [FAIL2BAN - Docs digitalocean.com](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-centos-7)

