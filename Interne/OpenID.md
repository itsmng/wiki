---
title: Tester la connexion OpenID
description: 
published: true
date: 2024-06-14T13:12:06.381Z
tags: 
editor: markdown
dateCreated: 2024-01-05T13:52:38.086Z
---

# Configuration
Aller dans `Configuration -> Authentification -> Open ID connect configuration
`
![oidc_config.png](/Documentations-Interne/files/img/oidc/oidc_config.png)

Activate open ID connect: `Oui`
Provider: `https://oidctest.wsweet.org/.well-known/openid-configuration`
Client ID: `private`
Client Secret:	`tardis`
Scopes: `openid,profile,email,roles`

## Mapping
![oidc_mapping.png](/Documentations-Interne/files/img/oidc/oidc_mapping.png)

![oidc_mapping_config.png](/Documentations-Interne/files/img/oidc/oidc_mapping_config.png)

Username: `given_name`
Nom de famille: `family_name`
Courriel: `email`
Prénom: `given_name`

# Utilisateurs Disponibles
| Nom d'utilisateur | Mot de passe | Roles                 |
|-------------------|--------------|-----------------------|
| dwho              | dwho         | - timelords   - users |
| rtyler            | rtyler       | - earthlings  - users |
| msmith            | msmith       | - earthlings  - users |
