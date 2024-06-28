---
title: Proxy SQL avec Maxscale
description: 
published: true
date: 2024-06-28T09:49:38.579Z
tags: 
editor: markdown
dateCreated: 2024-06-26T08:24:42.863Z
---

# Installation de MariaDB Maxscale
Pour mettre en place MaxScale vous devez l'installer via son paquet DEB. Voici la procédure de cette installation :

```bash
wget https://dlm.mariadb.com/3776546/MaxScale/24.02.1/packages/debian/bookworm/x86_64/maxscale_24.02.1~bookworm-1_amd64.deb
apt install ./maxscale_24.02.1~bookworm-1_amd64.deb
rm maxscale_24.02.1~bookworm-1_amd64.deb
```

# Création  de l’utilisateur SQL MaxScale
Pour que MaxScale puisse accéder aux informations du cluster, nous devons lui creer un compte SQL avec les permissions pour avoir acces aux informations du cluster.

Vous pouvez vous connecter à la console SQL avec cette commande.
`mysql -u root -p`

La création du compte se fait avec ses requêtes SQL :
```SQL
CREATE USER 'maxscale'@'%' IDENTIFIED BY '@ITSM-ng';

GRANT SUPER, RELOAD, REPLICATION CLIENT, REPLICATION SLAVE, SHOW DATABASES ON *.* TO 'maxscale'@'%';
GRANT SELECT ON mysql.db TO 'maxscale'@'%';GRANT SELECT ON mysql.user TO 'maxscale'@'%';
GRANT SELECT ON mysql.roles_mapping TO 'maxscale'@'%';
GRANT SELECT ON mysql.tables_priv TO 'maxscale'@'%';
GRANT SELECT ON mysql.columns_priv TO 'maxscale'@'%';
GRANT SELECT ON mysql.proxies_priv TO 'maxscale'@'%';
GRANT SELECT ON mysql.procs_priv TO 'maxscale'@'%';GRANT SHOW DATABASES ON *.* TO 'maxscale'@'%';
```

> N'oubliez pas de changer le mot de passe (**@ITSM-ng**) et si besoin le nom du compte **maxscale**
{.is-info}


# Configuration de MaxScale
Nous allons donc passer à la configuration de MaxScale. Par mesure de sécurité, nous allons sauvegarder la configuration par défaut.
`mv /etc/maxscale.cnf /etc/maxscale.cnf.bk`

À présent, nous allons écrire notre propre configuration. Pour ce faire, nous allons éditer le fichier **/etc/maxscale.cnf**
`vi /etc/maxscale.cnf`

Maintenant que l'éditeur est ouvert, nous allons lui donner cette configuration.

```ini
[maxscale]
threads=auto

[DB1]
type=server 
address=172.18.50.250
port=3306 
protocol=MariaDBBackend

[DB2]
type=server 
address=172.18.50.251
port=3306 
protocol=MariaDBBackend

[DB3]
type=server 
address=172.18.50.252
port=3306 
protocol=MariaDBBackend

[Galera-Monitor]
type=monitor
module=galeramon 
servers=DB1,DB2,DB3 
user=maxscale
password=@ITSM-ng
monitor_interval=15s 


[Galera-Service] 
type=service 
router=readconnroute 
router_options=synced 
servers=DB1,DB2,DB3
user=maxscale 
password=@ITSM-ng

[Galera-Listener] 
type=listener 
service=Galera-Service 
protocol=MariaDBClient 
port=4306

[Read-Write-Service]
type=service
router=readwritesplit
servers=DB1,DB2,DB3
user=maxscale
password=@ITSM-ng

[Read-Write-Listener]
type=listener
service=Read-Write-Service
protocol=MariaDBClient
port=3306
```
# Activer l’interface Web
MaxScale propose une interface web pour voir les informations du cluster. Vous pouvez l'éditer en rajouter cette configuration à la fin du fichier de configuration.

`vi /etc/maxscale.cnf`

```ini
admin_host            = 0.0.0.0
admin_port            = 8989
admin_secure_gui=false
``` 
L’interface web écoutera donc sur le port 8989 en HTTP.

## Créer un compte utilisateur pour l’interface WEB
`maxctrl create user "maxadmin" "123" --type=admin`
Le nom d’utilisateur est maxadmin et son mot de passe est 123.

Le type basic est aussi disponible pour ne pas donner les droits d’administration.