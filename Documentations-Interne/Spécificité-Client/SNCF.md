---
title: SNCF
description: 
published: true
date: 2024-06-27T20:01:19.417Z
tags: 
editor: markdown
dateCreated: 2024-06-27T20:01:19.417Z
---

# Infrastructure
L'infrastructure est sous Kubernetes **attention**, on ne connait pas leurs architecture:
De ce que j'ai compris
- un Pod ITSM-NG avec Apache (PHP 8.2)
- Debian 11
- Un reverse Proxy non connu (Nginx ou Traefik), mais c'est surement un Traefik.

Faire attention les modifications ne seront peut être pas appliqué sur le bon conteneur par le client.

Infra Kubernetes avec AWS (EKS)