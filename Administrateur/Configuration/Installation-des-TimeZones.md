---
title: Installer les Timezones dans ITSM-NG
description: 
published: true
date: 2024-07-25T14:05:34.932Z
tags: 
editor: markdown
dateCreated: 2024-07-25T14:05:34.932Z
---

# Installation sur le serveur SQL
```bash
mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -p -u root mysql
```
Cette commande va mettre les timezones dans la table time_zone_name de la base mysql.

# Ajout dans ITSM-NG
Vous devez ajouter la permission de lecture de la table time_zone_name de la table mysql. Vous pouvez le faire avec cette commande SQL.

```sql
GRANT SELECT ON `mysql`.`time_zone_name` TO 'itsmng'@'localhost';
```