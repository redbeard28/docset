# yum update command returns error "[Errno -3] Error performing checksum"

## Environnements:

* Red Hat Enterprise Linux 5 (yum client)

* Red Hat Enterprise Linux 6 (yum server)

* Red Hat Network Satellite

* Red Hat Network

## Problème:
Après avoir effectué une MAJ ou récemment construit un mirror RHN, le client yum retourne l'erreur suivante:

	yum update command returns error "[Errno -3] Error performing checksum"

## Résoltion:
Placez-vous dans le répertoire contenant vorte repo en erreur et tapez la commande suivante:

```bash
createrepo -s sha .
```


Source d'information => [RedHat KB](https://access.redhat.com/solutions/24128)
