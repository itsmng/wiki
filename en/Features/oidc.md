---
title: OpenID Connect
description: 
published: true
date: 2024-06-14T13:12:54.731Z
tags: 
editor: markdown
dateCreated: 2023-11-03T13:32:23.297Z
---

# OpenID Connect with ITSM-NG

## About OpenID Connect

OpenID Connect adds an authentication layer on top of the OAuth 2.0 authorization framework. It allows clients to verify the identity of an end user based on the authentication performed by an authorization server.

## Dependencies

ITSM-NG will use PHP OpenID Connect Basic Client by `jumbojett`, a simple library that allows an application to authenticate a user through the basic OpenID Connect flow.

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

## Useful links

To try OpenID Connect, follow [this link](https://oidctest.wsweet.org).

jumbojett/OpenID-Connect-PHP ([Github](https://github.com/jumbojett/OpenID-Connect-PHP))
