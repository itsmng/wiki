---
title: Envoie d'e-mail
description: 
published: true
date: 2024-06-17T06:56:58.432Z
tags: 
editor: markdown
dateCreated: 2024-06-17T06:56:56.942Z
---

# Introduction :
Les e-mails sont utilisés pour la fonctionnalité de mots de passe oubliés ou pour tout type de notification (SLA, expiration d'un certificat, une nouvelle tâche...).

# Configuration :

Pour ajouter votre serveur SMTP, vous devez aller dans `Configuration -> Notifications`
![](/files/img/courriel/notification_goto.png)

Et ensuite, mettre sur **oui** `Activer le suivi ` et `Activer les notifications par courriel`

![](/files/img/courriel/config.png)

Et ensuite, vous pouvez configurer le serveur e-mail dans `Configuration des notifications par courriels`.

Vous devez changer le `Mode d'envoi des courriels` par SMTP (ou SMTP+TLS, SMTP+SSL si votre serveur supporte le chiffrement) et ensuite lui définir les paramètres de connexion à votre serveur e-mail.

N'oubliez pas aussi de définir `Courriel de l'administrateur`   et `Courriel expéditeur`.