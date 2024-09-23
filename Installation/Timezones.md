---
title: Initialisation des zones de temps
description: 
published: true
date: 2024-08-16T12:11:46.632Z
tags: 
editor: markdown
dateCreated: 2024-08-16T12:10:21.955Z
---

# Modification dans la base de donnée
```bash
mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -p -u root mysql
```

# Ajouter les droits à l'utilisateur SQL ITSM
```sql
GRANT SELECT ON `mysql`.`time_zone_name` TO 'itsmng'@'localhost';
```

Avec cette modification, ITSM-NG pourra lire les Timezones.