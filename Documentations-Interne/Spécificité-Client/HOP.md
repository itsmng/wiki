---
title: HOP
description: 
published: true
date: 2024-06-26T07:49:38.167Z
tags: 
editor: markdown
dateCreated: 2024-06-26T07:49:38.167Z
---

# La modifition du code ne prend pas effet
Redemarer php-fpm
```bash
systemctl restart php$(php -v | grep -oP '^PHP \K[0-9]+\.[0-9]+')-fpm
```