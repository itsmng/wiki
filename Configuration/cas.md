---
title: CAS sur ITSM-NG
description: 
published: true
date: 2024-06-14T13:12:00.035Z
tags: 
editor: markdown
dateCreated: 2024-06-14T12:48:38.835Z
---

# Introduction
Le service central d'authentification (CAS) est un protocole de connexion unique pour le Web.

# Configuration
Aller sur `Configuration -> Authentification`.
Et ensuite sur `Autres méthodes d'authentification`.

![menu-authentification.png](/configuration/menu-authentification.png)

Ensuite, dans la section `Authentification par CAS	` vous devez définir l'Hôte CAS (sans le https:// , http://), et ensuite lui indiquer sa version.

Exemple d'hôte pour LemonLDAP: `auth.lemonldap-dev.itsm-ng.local/cas`

Le port sera 80 pour un serveur CAS en HTTP ou 443 si votre serveur est en HTTPS.

Vous pouvez aussi définir un `Répertoire de base` et une `Adresse web de retour à la déconnexion`.

Une fois le CAS configuré, chaque utilisateur qui arrivera sur la page de connexion sera automatiquement redirigé sur le serveur d'authentification. 

# Mon CAS est HS, je ne peux plus me connecter.
Vous pouvez forcer la connexion locale avec l'argument noAUTO=1, l'URL serait donc https://itsm-ng.local/index.php?noAUTO=1