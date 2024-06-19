---
title: Collecteur de mail
description: 
published: true
date: 2024-06-19T12:05:21.199Z
tags: 
editor: markdown
dateCreated: 2024-06-19T12:05:07.522Z
---

# Introduction
Le collecteur permet de récupérer les emails sur une boite aux lettres pour ensuite créer un ticket.

Cela fonctionne avec une boite mail dédié au ticketing ITSM-NG, ou ITSM-NG se connectera.

Quand les notifications par mail sont activées, si les utilisateurs répondent au mail du ticket, le message est collecté et ITSM-NG ajoute le contenu de l’email dans le suivi du ticket existant.

# Prérequis
- Avoir une boite aux lettres accessible par le protocole IMAP ou POP
- Avoir l’extension PHP qui permet la connexion IMAP ou POP
- Avoir configuré les actions automatiques (Avec la tache cron)
- L'utilisateur qui envoie le mail doit voir un compte utilisateur ITSM-NG et sûr son profile l'adresse doit être présente.
- Avoir configuré le serveur mail dans les actions automatiques

# Configuration du collecteur
Vous devez aller dans `Configuration ->  Collecteurs` et ajouter un nouveau collecteur.

Les informations nécessaires :
`Actif`: `oui`
`Serveur`: vous lui indiquer d'adresse de votre serveur IMAP/POP.
`Options de connexion`: Si c'est un serveur IMAP ou POP, avec le chiffrement SSL / TLS...
`Port`: C'est le port du serveur mail (25, 143, 993)
`Identifiant`
`Mot de passe	`

![configuration.png](/files/img/configuration/collecteur/configuration.png)

# Tester le collecteur
Pour tester le collecteur, vous pouvez aller dans l'onglet `Actions` et cliquer sur `Récupérer les courriels maintenant`

![verification.png](/files/img/configuration/collecteur/verification.png)