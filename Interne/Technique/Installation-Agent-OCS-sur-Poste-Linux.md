---
title: Installation de l'agent sur un poste de travail sur Linux
description: 
published: true
date: 2024-06-27T17:37:26.757Z
tags: ocs, linux, bsd
editor: markdown
dateCreated: 2024-01-19T12:16:22.793Z
---

# Installation de l’agent sur le poste :
## Debian/Ubuntu :
L’agent OCSInventory est disponible officiellement dans les dépôts de Debian.
Vous pouvez l’installation avec la commande :

```bash
apt install ocsinventory-agent
```

## Fedora :
Pour l’installer l’agent sur Fedora, vous devez installer le dépôt d’OCSInventory sur le poste.
Vous voulez le faire grâce au paquet RPM ocsinventory-release. Cela peut se faire avec la
commande :

```bash
  dnf install https://rpm.ocsinventory-ng.org/ocsinventory-release-latest.fc$(rpm -
  E %fedora).ocs.noarch.rpm
  dnf install ocsinventory-agent
```

## Redhat (8) :
Pour l’installer l’agent sur Redhat, vous devez installer le dépôt d’OCSInventory et le dépôt
EPEL sur le poste.
Vous voulez le faire grâce aux paquets RPM ocsinventory-release et epel-release. Cela peut
se faire avec la commande :
```bash
  dnf install https://dl.fedoraproject.org/pub/epel/epel-se-latest-8.noarch.rpm
  https://rpm.ocsinventory-ng.org/ocsinventory-release-latest.fc$(rpm -
  E %fedora).ocs.noarch.rpm
  dnf install ocsinventory-agent
```

## ArchLinux :
L’agent OCS est disponible depuis AUR. Il peut donc s’installer avec ses commandes :

```bash
  git clone https://aur.archlinux.org/ocsinventory-agent.git
  cd ocsinventory-agent
  makepkg -si
```

# Configuration de l’agent:

## En mode HTTPS (Self-Signed) Non fonctionnel pour ITSM

Pour fonctionner, nous allons avoir besoin de stocker le certificat public du serveur sur le pc,
cela peut se faire avec la commande en ROOT :

```bash
  openssl s_client -showcerts -connect demo-test.itsm-ng.org:443 </dev/null
  2>/dev/null | openssl x509 -outform PEM >/etc/ocsinventory/cacert.pem
```
Maintenant, nous allons pouvoir configurer l’agent avec la commande

```vi /etc/ocsinventory/ocsinventory-agent.cfg```

Voici la configuration à appliquer :
```bash
	ssl=1
  ca=/etc/ocsinventory/cacert.pem
  server=https://demo-test.itsm-ng.org/ocsinventory
```

Maintenant, nous allons forcer l’inventaire avec la commande :
ocsinventory-agent

## En mode HTTPS sans verification du certificat
Maintenant, nous allons pouvoir configurer l’agent avec la commande

```vi /etc/ocsinventory/ocsinventory-agent.cfg```

Voici la configuration à appliquer :
```bash
	ssl=0
  server=https://demo-test.itsm-ng.org/ocsinventory
```