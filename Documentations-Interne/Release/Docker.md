---
title: Publication d'une nouvelle version sur le Docker HUB
description: 
published: true
date: 2024-06-14T13:12:42.560Z
tags: 
editor: markdown
dateCreated: 2023-11-03T10:21:08.570Z
---

# Build de l'image
> AVANT: Modifier la version dans le dockerfile
{.is-warning}
```
	git clone https://github.com/itsmng/itsmng-docker
  cd itsmng-docker/***VERSION***
```
## Build avec Podman
```bash
	podman build -t docker.io/itsmng/itsm-ng:***VERSION*** .
```
Remplacer *** ***VERSION*** *** par le numero de version
## Avec Docker
```bash
	 docker build -t itsmng/itsm-ng:***VERSION*** .
```
Remplacer *** ***VERSION*** *** par le numero de version

# Se connecter au Docker HUB

## Qui a les accès ?
Actuellement seul Erwan Goalou et Florian ont acces au dépot Docker Hub.

## Avec Podman
```bash
	podman login docker.io
```
## Avec Docker
```bash
	docker login
```

# Envoyer l'image
## avec Podman
```bash
	podman push docker.io/itsmng/itsm-ng:***VERSION***
```
Remplacer *** ***VERSION*** *** par le numéro de version
## avec Docker
```bash
	docker push itsmng/itsm-ng:***VERSION***
```
Remplacer *** ***VERSION*** *** par le numéro de version

# Vérification
Vous pouvez vérifier sur [cette page](https://hub.docker.com/repository/docker/itsmng/itsm-ng/tags?page=1&ordering=last_updated).