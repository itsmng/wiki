---
title: Installation d'ITSM-NG
description: 
published: true
date: 2024-06-14T13:12:14.410Z
tags: 
editor: markdown
dateCreated: 2023-11-03T14:01:32.115Z
---

## Prérequis

Pour permettre l'installation d'ITSM-NG, il est nécessaire d'avoir un serveur Windows ou Linux avec les services suivants installés et configurés:

* Apache, Nginx, ISS, etc
* MariaDB >= 10.X or MySQL >= 5.7
* PHP 7.2 ou plus récent

```markdown
Note sur PHP : la version 8.X est recommandée car PHP 7.X n'est plus supporté par PHP.
Voir [https://www.php.net/supported-versions.php](https://www.php.net/supported-versions.php) pour plus d'information.
```

La liste des extensions **nécessaire** pour le bon fonctionnement d'ITSM-NG : 

* php-ctype
* php-curl
* php-gd
* php-iconv
* php-intl
* php-json
* php-mbstring
* php-mysqli
* php-simplexml
* php-zlib

Ces autres extensions sont optionnelles : 

* php-exif 
* php-imap
* php-ldap
* php-sodium
* php-zip and php-bz2
* php-apcu
* php-opcache
* php-xmlrpc

## Téléchargement

Téléchargez la versions de votre choix au lien suivant : [https://github.com/itsmng/itsm-ng/releases](https://github.com/itsmng/itsm-ng/releases)

Par ailleurs, Il est recommandée d'utiliser la dernière version disponible

`Note : Les versions Dev et nightly seront disponible prochainement pour ceux qui souhaitent tester les dernières fonctionnalitées d'ITSM-NG.`

## Pre installation

- Se connecter au serveur MySQL and créer une base donnée pour le logiciel.
```SQL
CREATE DATABASE itsmng;
```

- Créez un utilisateur et lui donner les droits appropriés.

```SQL
CREATE USER 'itsmng'@'localhost' IDENTIFIED BY 'itsmng';
GRANT ALL PRIVILEGES ON itsmng.* TO itsmng@localhost;
FLUSH PRIVILEGES;
```

- décompressez la version ITSM-NG.

Il y a deux facons d'installer ITSM-NG : 

* [Installation Web](#web-installation)
* [Installation en ligne de commande](#command-line-installation)

## Installation web

Allez sur [http://localhost/itsm-ng](http://localhost/itsm-ng) et suivre les étapes suivantes.

![Choisir une langue par défaut](/files/img/installation/setup_choose_language.png)

Sélectionnez la langue par défaut et cliquez sur `OK`.

![Accepter la licence](/files/img/installation/setup_accept_license.png)

Acceptez la licence et cliquez sur `Continuer`.

![Mettre a jour ou installer](/files/img/installation/setup_install.png)

Clicqez sur `Installer` pour lances les étapes d'installation.

`Note : Veuiller lire `[La documentation de mise a our](update.md)` pour mettre a jour depuis une ancienne version de ITSM-NG ou migrer de GLPI à ITSM-NG.`

![Test des librairies obligatoires](/files/img/installation/setup_step_0.png)

Avant la configuration, une vérification des librairies nécessaire est effectuée. Si tout est OK, cliquez sur `Continuer` sinon, installez les librairies manquantes et cliquez sur `Ré-essayer `.

![Connexion MySQL](/files/img/installation/setup_step_1.png)

Remplissez les informations de connexion MySQL et cliquez sur `Continuer`.

![Base de donnée MySQL](/files/img/installation/setup_step_2.png)

Sélectionnez la base de donnée et cliquez sur `Continuer`.

`Note : Pour créer une base de donnée depuis l'interface, L'utilisateur MySQL entré précédemment doit avoir les droits de création de base de donnée.`

![Initialisation de la base de donnée MySQL](/files/img/installation/setup_step_3.png)

Après l'initialisation de la base de donnée, cliquez sur `Continue`.

![Finalisation](/files/img/installation/setup_step_4.png)

Maintenant, vous pouvez vous connecter sur ITSM-NG avec l'utilisateur par défaut itsm/itsm.

Profitez d'ITSM-NG :-)

## Installation en ligne de commande

Allez dans votre dossier ITSM-NG

Avant l'installation, lancez la commande suivante pour vérifier les prérequis :

    php bin/console itsmng:system:check_requirements

Resultat :

| Requirement                                            | Status    | Messages                                            |
| :----------------------------------------------------- |:---------:| ---------------------------------------------------:|
| Testing PHP Parser                                     | [OK]      |                                                     |
| Sessions test                                          | [OK]      |                                                     |
| Allocated memory test                                  | [OK]      |                                                     |
| mysqli extension test                                  | [OK]      |                                                     |
| ctype extension test                                   | [OK]      |                                                     |
| fileinfo extension test                                | [OK]      |                                                     |
| json extension test                                    | [OK]      |                                                     |
| mbstring extension test                                | [OK]      |                                                     |
| iconv extension test                                   | [OK]      |                                                     |
| zlib extension test                                    | [OK]      |                                                     |
| curl extension test                                    | [OK]      |                                                     |
| gd extension test                                      | [OK]      |                                                     |
| simplexml extension test                               | [OK]      |                                                     |
| intl extension test                                    | [OK]      |                                                     |
| ldap extension test                                    | [WARNING] | ldap extension is not present                       |
| apcu extension test                                    | [WARNING] | apcu extension is not present                       |
| Zend OPcache extension test                            | [OK]      |                                                     |
| xmlrpc extension test                                  | [WARNING] | xmlrpc extension is not present                     |
| exif extension test                                    | [OK]      |                                                     |
| sodium extension test                                  | [OK]      |                                                     |
| Testing DB engine version                              | [OK]      |                                                     |
| Testing DB timezone data                               | [WARNING] | Access to timezone database (mysql) is not allowed. |
| Checking write permissions for log files               | [OK]      |                                                     |
| Checking write permissions for cache files             | [OK]      |                                                     |
| Checking write permissions for setting files           | [OK]      |                                                     |
| Checking write permissions for automatic actions files | [OK]      |                                                     |
| Checking write permissions for document files          | [OK]      |                                                     |
| Checking write permissions for dump files              | [OK]      |                                                     |
| Checking write permissions for graphic files           | [OK]      |                                                     |
| Checking write permissions for lock files              | [OK]      |                                                     |
| Checking write permissions for pictures files          | [OK]      |                                                     |
| Checking write permissions for plugins document files  | [OK]      |                                                     |
| Checking write permissions for rss files               | [OK]      |                                                     |
| Checking write permissions for session files           | [OK]      |                                                     |
| Checking write permissions for temporary files         | [OK]      |                                                     |
| Checking write permissions for upload files            | [OK]      |                                                     |

[OK] => Librairie installée

[WARNING] => Library non installée mais optionelle

[ERROR] => Librairie recquise non installée

Si vous n'avez pas de statut `ERROR`, lancez la commande suivante :

    php bin/console itsmng:database:install -H DB_HOST -u DB_USER -p DB_PASSWORD -d DB_NAME

Resultat :

    +---------------+------------+
    | Database host | DB_HOST    |
    | Database name | DB_NAME    |
    | Database user | DB_USER    |
    +---------------+------------+
    Do you want to continue ? [Yes/no] yes
    Installation done.

Après l'installation, vous aurez besoin de mettre a jour les permissions du dossier `files` : 

    sudo chown -R www-data: files

Maintenant, vous pouvez vous connecter à ITSM-NG a l'adresse [http://localhost/itsm-ng](http://localhost/itsm-ng) avec l'utilisateur par défaut itsm/itsm.

Profitez bien d'ITSM-NG :-)
