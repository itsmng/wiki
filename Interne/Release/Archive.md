---
title: Publication d'une nouvelle version sous forme d'archive
description: 
published: true
date: 2024-06-14T13:12:41.056Z
tags: 
editor: markdown
dateCreated: 2023-12-01T08:22:37.490Z
---

# Builder l'archive
Exemple de build pour la version **1.6.0**.
```bash
	git clone https://github.com/itsmng/itsm-ng
  cd itsm-ng/tools
  ./make_release.sh  -y ../ 1.6.0
```
Une fois fini l'archive se trouve dans **/tmp/itsm-ng-1.6.0.tgz** .
```
	cp /tmp/itsm-ng-1.6.0.tgz ~/Bureau/
```