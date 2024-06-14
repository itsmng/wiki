---
title: Installation sur Debian/Ubuntu
description: 
published: true
date: 2024-06-14T13:12:15.878Z
tags: ubuntu, debian
editor: markdown
dateCreated: 2023-11-03T14:48:44.652Z
---

Afin d'installer le dépôt Debian, vous devez ajouter notre dépôt à votre liste de depot.

Importation de la cle GPG : 

```bash
curl -fsSL http://deb.itsm-ng.org/pubkey.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/itsm-ng-keyring.gpg
```

# Ajout du depot : 

```bash
echo "deb http://deb.itsm-ng.org/$(. /etc/os-release && echo "$ID")/ $(. /etc/os-release && echo "$VERSION_CODENAME") main" | sudo tee /etc/apt/sources.list.d/itsm-ng.list
sudo apt update
```

Avec debian, nous fournissons les versions suivantes: 
* bullseye (11)
* buster (10)
* bullseye (11)
* bookworm (12)
* testing (13)
* sid (unstable)

Avec ubuntu, nous fournissons les versions suivantes:
* noble (24.04)
* jammy (22.04)
* focal (20.04)
* bionic (18.04)



# Installation du paquet ITSM-ng

```bash
    sudo apt install itsm-ng
```

Après l'installation du paquet, allez sur `http://IP_DU_SERVEUR/`
Si vous arrivez sur la page par défaut d'Apache, taper les commandes suivantes:

```bash
    sudo unlink /etc/apache2/sites-enabled/000-default.conf
    sudo apache2ctl restart
```
et rafraîchissez la page de votre navigateur.

- Se connecter au serveur MySQL et créer une base donnée pour le logiciel.
```SQL
CREATE DATABASE itsmng;
```

- Créez un utilisateur et lui donner les droits appropriés.

```SQL
CREATE USER 'itsmng'@'localhost' IDENTIFIED BY 'itsmng';
GRANT ALL PRIVILEGES ON itsmng.* TO itsmng@localhost;
FLUSH PRIVILEGES;
```
# Information
Vous trouverez ci-dessous les emplacements des différents fichiers/dossiers ITSM-NG :


* L'application : `/usr/share/itsm-ng/`
* La configuration: `/etc/itsm-ng/`
* Les documents et le cache : `/var/lib/itsm-ng/`
* La configuration Apache : `/etc/apache2/site-availables/itsm-ng.conf`