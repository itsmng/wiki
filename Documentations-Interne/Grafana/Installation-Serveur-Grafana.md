---
title: Installer un serveur Grafana
description: 
published: true
date: 2024-06-14T13:12:38.109Z
tags: 
editor: markdown
dateCreated: 2024-01-19T12:47:32.051Z
---

# Sur Debian
## Prérequis
```bash
	apt install apt-transport-https wget gpg2
```

## Installation de la clée GPG
```bash
	mkdir -p /etc/apt/keyrings/
	wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | tee /etc/apt/keyrings/grafana.gpg > /dev/null
```

## Configuration du dépot
```bash
	echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | tee -a /etc/apt/sources.list.d/grafana.list
```

## Installation du paquet grafana
```bash
	apt update
  apt install grafana
```

# Sur Redhat
## Installation de la clée GPG
```
  wget -q -O gpg.key https://rpm.grafana.com/gpg.key
  rpm --import gpg.key
```

## Configuration du dépot

`vi /etc/yum.repos.d/grafana.repo `

```yaml
[grafana]
name=grafana
baseurl=https://rpm.grafana.com
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://rpm.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
```

## Installation du paquet grafana
```bash
	dnf install grafana
```

# Information
Grafana est maintenant installer, il est disponible a cette adresse http://127.0.0.1:3000.