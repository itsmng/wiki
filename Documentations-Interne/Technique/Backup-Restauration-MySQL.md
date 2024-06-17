---
title: Sauvegarder et restaurer une base de données MySQL
description: 
published: true
date: 2024-06-17T09:42:28.872Z
tags: 
editor: markdown
dateCreated: 2024-06-17T09:42:28.872Z
---

# Sauvegarde
```
mysqldump -u root -pMDP --databases itsmng > itsm-ng-$(date +%Y%m%d).sql
```

# Restauration
```
mysql -u root -pMDP itsmng < itsm-ng-*.sql
```