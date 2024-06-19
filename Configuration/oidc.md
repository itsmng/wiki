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

## Comment configurer ITSM-NG avec OpenID Connect ?

Sur ITSM-NG, naviguez vers la section `Configuration`, puis sélectionnez `Authentification`. Sur la page affichée, choisissez `Authentication avec OpenID Connect`. 

Les instructions suivantes il vous guideront tout au long du processus de configuration : 

### Configuration

![](/files/img/oidc/oidc_config.png)

Dans le premier panneau (voir l'image ci-dessus), `Activer OpenID Connect ` doit être réglé sur `Oui`.

`Note : La connexion forcée vous redirigera directement vers la page de connexion. Pour contourner la redirection, utilisez le lien suivant : http://xx.xx.xx.xx/itsm-ng/index.php?noAUTO=1`

Les champs `Provider`, `Client ID` et `Client Secret` **sont obligatoires** et doivent être complétés avec les informations correspondant à votre fournisseur d'autorisation afin d'utiliser OpenID Connect.

N'oubliez pas d'enregistrer la configuration.

### Mappage

La configuration du mappage vous permet de lier les informations de l'utilisateur OIDC à celles de l'utilisateur ITSM-NG.

Pour accéder au panneau de configuration du mappage, cliquez sur `Mappage`.



![](/files/img/oidc/oidc_mapping.png)

Pour forcer la mise à jour des informations sur les utilisateurs OIDC dans ITSM-NG, utilisez la commande suivante :

    php bin/console itsmng:oidc:update

Après avoir activé OpenID connect, un nouveau bouton apparaîtra sur la page de connexion.

![](/files/img/oidc/oidc_login.png)

Si vous cliquez sur `Connection en SSO`, vous serez redirigé vers votre fournisseur et vous pourrez vous connecter. L'accès à ITSM-NG vous sera alors accordé.

## Liens utiles

Pour essayer OpenID Connect, suivez [ce lien](https://oidctest.wsweet.org).

jumbojett/OpenID-Connect-PHP ([Github](https://github.com/jumbojett/OpenID-Connect-PHP))
