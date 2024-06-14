---
title: Installation sur RHEL/Fedora
description: 
published: true
date: 2024-06-14T13:12:20.951Z
tags: 
editor: markdown
dateCreated: 2023-10-27T07:45:42.964Z
---

# Ajout du dépôt
### Redhat
```bash
	curl https://rpm.itsm-ng.org/itsm-ng.repo -o /etc/yum.repos.d/itsm-ng.repo
```

### Fedora
```bash
	curl https://rpm.itsm-ng.org/itsm-ng-fedora.repo -o /etc/yum.repos.d/itsm-ng.repo
```

# Installation du paquet ITSM-ng
```bash
	dnf install itsm-ng
```
À ce stade, ITSM-ng est accessible sur le serveur web, son fichier est configuration est ***/etc/httpd/conf.d/itsm-ng.conf*** . 

# Création de l'utilisateur ITSM-ng et sa base de donnée

```bash
	mysql
```

```sql
	CREATE USER 'itsmng'@'localhost' IDENTIFIED BY 'MOTS_DE_PASSE';
  CREATE DATABASE itsmng;
  GRANT ALL PRIVILEGES ON itsmng.* TO itsmng@localhost;
  FLUSH PRIVILEGES;
```

Vous pouvez maintenant procéder à la finalisation de votre installation en allant sur votre serveur web et lui donner les identifiants pour qu'il se connecte à la base de donnée.

# Configuration SELinux (Optionnel)
```bash
	setsebool -P httpd_unified 1
	setsebool -P httpd_can_network_connect 1
	setsebool -P httpd_can_sendmail 1
	setsebool -P httpd_can_network_connect_db 1
```