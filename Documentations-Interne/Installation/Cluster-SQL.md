---
title: Installation d'un Cluster MariaDB Galera
description: 
published: true
date: 2024-06-26T08:09:24.295Z
tags: 
editor: markdown
dateCreated: 2024-06-26T08:09:24.295Z
---

# Introduction
Dans cette documentation, nous allons voir comment créer un cluster SQL de type maitre esclave avec le logiciel MariaDB Galéra.

# Mappage des adresses IP des serveurs SQL 
Modifier le fichier host sur tous vos nœuds SQL :
`cat /etc/hosts`

```
172.18.50.250 sql-01
172.18.50.251 sql-02
172.18.50.252 sql-03
```
Dans cet exemple, il y a 3 serveurs SQL que je nomme sql-01,sql-02,sql-03.

# Installation de MariaDB
Pour fonctionner, nous avons besoin de MariaDB et de Rsync qui servira à faire la réplication des données SQL.
Vous devez l'installer avec cette commande et le faire sur chaque nœud.
`apt install mariadb-server rsync`

# Configuration du cluster
Premièrement, nous devons sauvegarder l'ancien fichier de configuration.
`mv /etc/mysql/mariadb.conf.d/60-galera.cnf /etc/mysql/mariadb.conf.d/60-galera.cnf.bak`

Maintenant que le fichier de configuration est sauvegardé, nous allons écrire notre fichier de configuration.
Vous devez éditer le fichier **/etc/mysql/mariadb.conf.d/60-galera.cnf**, vous pouvez par exemple le faire avec vim.
Avec cette commande
`vi /etc/mysql/mariadb.conf.d/60-galera.cnf`


```ini
#
# * Galera-related settings
#
# See the examples of server wsrep.cnf files in /usr/share/mysql
# and read more at https://mariadb.com/kb/en/galera-cluster/

[galera]
wsrep_on                 = ON
wsrep_provider                = /usr/lib/galera/libgalera_smm.so
wsrep_cluster_name       = "ITSM-ng MariaDB Galera Cluster"
wsrep_cluster_address    = "gcomm://sql-01,sql-02,sql-03"

binlog_format            = row
default_storage_engine   = InnoDB
innodb_autoinc_lock_mode = 2

# Allow server to accept connections on all interfaces.
bind-address = 0.0.0.0

wsrep_sst_method=rsync
wsrep_node_address="172.18.50.250"
wsrep_node_name="sql-01"
```

> Cette configuration est a appliquer sur tout les noeuds et vous devez modifier que chaq'un des noeuds la valeurs de **wsrep_node_address** et de **wsrep_node_name**
{.is-warning}

# Arrêt de toutes les instances MariaDB
Pour créer le cluster, vous devez arrêter MariaDB sur tous les nœuds. Cette action peut être faite avec cette commande :

`systemctl stop mysql`

# Création du cluster
Pour créer le cluster, vous avez juste à exécuter cette commande, qui va configurer vos nœuds et initialiser votre cluster.
`galera_new_cluster`