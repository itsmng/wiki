---
title: Installation de PHP-FPM a la place de apache-mod-php
description: 
published: true
date: 2024-06-26T07:45:35.385Z
tags: 
editor: markdown
dateCreated: 2024-06-26T07:43:40.144Z
---

# Sur Debian
```bash
apt install php-fpm
```

## Activation dans Apache
```
a2enmod proxy_fcgi setenvif
a2enconf php8.3-fpm
```
Vous devez modifier php8.3 par la version de PHP que vous avez.


| Distribution  | Version de PHP |
|---------------|----------------|
| Debian 10     |      7.3       |
| Debian 11     |      7.4       |
| Debian 12     |      8.2       |
| Ubuntu 20.04  |      7.4       |
| Ubuntu 22.04  |      8.1       |
| Ubuntu 24.04  |      8.3       |

## Redemarrage de PHP-FPM
```bash
/etc/init.d/php8.3-fpm restart
```

## Supprimer apache-mod-php
```bash
apt remove libapache2-mod-php* --purge
```