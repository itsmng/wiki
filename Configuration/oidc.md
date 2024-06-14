---
title: OpenID Connect sur ITSM-NG
description: 
published: true
date: 2024-06-14T13:12:03.376Z
tags: 
editor: markdown
dateCreated: 2023-11-03T13:49:26.250Z
---

## À propos d'OpenID Connect

OpenID Connect ajoute une couche d'authentification au cadre d'autorisation OAuth 2.0. Il permet aux clients de vérifier l'identité d'un utilisateur final sur la base de l'authentification effectuée par un serveur d'autorisation.

## Dépendances

ITSM-NG utilise PHP OpenID Connect Basic Client de `jumbojett`, une bibliothèque simple qui permet à une application d'authentifier un utilisateur à travers le flux OpenID Connect.

## How to setup ITSM-NG with OpenID Connect

On ITSM-NG, navigate to the `Setup` section, then select `Authentication`. On the displayed page, choose `OpenID connect authentication`. 

The following instructions will guide you through the configuration process : 

### Configuration

![](/oidc/oidc_config.png)

On this first pane (see above image), `Activate openID connect` needs to be set to `Yes`.

`Note : forced connection will redirect you directly when reaching the login page. To bypass the redirection, use the following link : http://xx.xx.xx.xx/itsm-ng/index.php?noAUTO=1`

The `Provider`, `Client ID` and `Client Secret` fields **are required** and must be completed with corresponding information from your authorization provider in order to use OpenID Connect.

Don't forget to `Save` the configuration.

### Mapping

The mapping configuration allows you to link OIDC user information in ITSM-NG user.

To access the mapping configuration pane, click on `Mapping`.



![](/oidc/oidc_mapping.png)

To force the update of OIDC users information in ITSM-NG, use the following command :

    php bin/console itsmng:oidc:update

After activating OpenID connect, a new button will appear on the login page.

![](/oidc/oidc_login.png)

If you click on `SSO Login`, you will be redirected to your provider and you will be able to login. Once done, access to ITSM-NG is granted.

## Liens utiles

Pour essayer OpenID Connect, suivez [ce lien](https://oidctest.wsweet.org).

jumbojett/OpenID-Connect-PHP ([Github](https://github.com/jumbojett/OpenID-Connect-PHP))
