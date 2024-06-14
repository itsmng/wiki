---
title: Migrer d'un GLPI 10 vers 9.5
description: 
published: true
date: 2024-06-14T13:12:39.576Z
tags: 
editor: markdown
dateCreated: 2023-12-05T10:20:05.466Z
---

# Migrer sans suppression de donner
- Telecharger le fichier SQL
[migrate_glpi_10_-_itsm.sql](/migrate_glpi_10_-_itsm.sql)
```
	mysql -u root -p glpi10 < migrate_glpi_10_-_itsm.sql
```
> Changer le nom d'utilisateur et la base glpi10
{.is-warning}


## Supression des donnees inutiles
- Telecharger le fichier SQL
[migrate_glpi_10_-_itsm.sql](/migrate_glpi_10_-_itsm.sql)

```
	mysql -u root -p glpi10 < migrate_glpi_10_-_itsm_supprimer_donnee.sql
```
> Changer le nom d'utilisateur et la base glpi10
{.is-warning}

## GLPI 9.5.7
Glpi 9.5.7 est disponible [ICI](https://github.com/glpi-project/glpi/releases/download/9.5.7/glpi-9.5.7.tgz).

## ITSM-ng 1.6
ITSM-ng 1.6.0 est disponible [ICI](https://github.com/itsmng/itsm-ng/releases/download/v1.6.0/itsm-ng-1.6.0.tgz).