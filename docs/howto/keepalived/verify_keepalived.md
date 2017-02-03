# Vérifier que keepalived fonctionne

## Objet
Nous allons découvrir comment vérifier que la VIP est up.

## Rappel
Pour rappel, keepalived fonctionne sous le mode actif/passif ou Master/Slave. Quand le Master tombe le slave monte la VIP.

## Commandes
Voici la commande pour vérifier que la VIP est up:
```bash
ip -4 addr show dev ens160
```

!!! **ens160** 
    c'est le nom du **device** réseau sur lequel est monté la VIP


