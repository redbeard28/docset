# Introduction

Une des nombreuses possibilités offertes pas la commande find, est d'exécuter une commande.

## Find files older than X days
Pour rechercher des fichiers plus vieux que X jours

``` {.bash}
 find /path/to/files* -mtime +5
```

## Find files older than X days and remove them!

``` {.bash}
find /path/to/files* -mtime +5 -exec rm {} \;
```
 
Une variante:
``` {.bash}
find /path/to/* -type f -mtime +5 -exec rm {} \;
```

