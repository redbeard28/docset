Introduction
============

La commande date est parfois utile pour faire des calculs avancés.

Usage
=====

-   Calculates the date 2 weeks ago from Saturday the specified format :

``` {.bash}
 date -d '2 weeks ago Saturday' +%Y-%m-%d
```

-   Unix alias for date command that lets you create timestamps in ISO
    8601 format

``` {.bash}
 alias timestamp='date "+%Y%m%dT%H%M%S"'
```
