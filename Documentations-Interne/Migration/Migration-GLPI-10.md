---
title: Migrer d'un GLPI 10 vers 9.5
description: 
published: true
date: 2024-06-19T07:38:44.807Z
tags: 
editor: markdown
dateCreated: 2023-12-05T10:20:05.466Z
---

# Migrer sans suppression de donner
- Vous devez remplacer les fichiers de GLPI sauf pour le dossier config, plugins et files par les fichiers d’ITSM-NG.

- Telecharger le fichier SQL
[migration GLPI_10_ITSM_1.0.sql](/Documentations-Interne/files/migration GLPI_10_ITSM_1.0.sql)

- Executer la migration:
```
	mysql -u root -p glpi10 <  migration GLPI_10_ITSM_1.0.sql
```
> Changer le nom d'utilisateur et la base glpi10
{.is-warning}

Si vous avez oublié les informations de connexion, il se trouve dans le fichier config/config_db.php de votre GLPI.
 