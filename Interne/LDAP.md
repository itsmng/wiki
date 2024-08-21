---
title: Tester la connexion LDAP
description: 
published: true
date: 2024-06-26T09:53:03.988Z
tags: 
editor: markdown
dateCreated: 2024-01-19T11:02:45.378Z
---

# Prerequis
> il faut que vous soyez connecté au VPN
{.is-warning}

# Configuration
Aller dans `Configuration -> Authentification -> Annuaires LDAP`

Serveur: `172.18.50.3`
Port: `389`
BaseDN: `dc=itsm-ng,dc=com`
DN du compte: `cn=admin,dc=itsm-ng,dc=com`
Mot de passe du compte: `qwerty`
Champ de l'identifiant: `cn`

![capture_d’écran_du_2024-01-19_11-57-57.png](/Documentations-Interne/files/img/ldap/capture_d’écran_du_2024-01-19_11-57-57.png)

# Connection
![capture_d’écran_du_2024-01-19_12-00-23.png](/Documentations-Interne/files/img/ldap/capture_d’écran_du_2024-01-19_12-00-23.png)

Identifiant: `jean`
Mot de passe: `qwerty`

# Ajout / Modif de compte LDAP
Les comptes peuvent etre gerer sur cette page: http://172.18.50.3/fusiondirectory

utilisateur: `admin`
mot de passe: `qwerty`