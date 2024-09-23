---
title: OCS Inventory
description: 
published: true
date: 2024-06-17T06:57:00.613Z
tags: 
editor: markdown
dateCreated: 2024-06-15T14:00:57.917Z
---

# Ajout d'un serveur OCSInventory dans ITSM-NG
Pour ajouter un serveur OCSInventory dans ITSM-NG, il faut suivre les étapes suivantes :
Aller dans le menu `Outils` puis "OCS Inventory NG"

![Menu OCSInventory](/files/img/plugins/ocsinventory/menu-ocsinventoryng.png)

Une fois sur la page cliquer sur le bouton "Ajouter un serveur OCSNG"

![Ajout d'un serveur OCSInventory](/files/img/plugins/ocsinventory/page_configuration_ocsng.png)

Il faut ensuite renseigner les informations suivantes :
- Nom du serveur : qui est le nom de votre serveur OCSInventory affiché dans ITSM-NG
- Hôte : qui est l'IP du serveur MYSQL de votre serveur OCSInventory
- Base de données : qui est le nom de la base de données OCSInventory
- Utilisateur : qui est l'utilisateur MySQL qui a accès à la base de données OCSInventory
- Mot de passe : qui est le mot de passe de l'utilisateur MySQL.

## Les options utiles :
- Méthode de synchronisation : ce paramètre permet de choisir entre une synchronisation automatique (via une tâche CRON) ou manuelle.
Utiliser l'action automatique de nettoyage des agents & suppression depuis OCSNG: ce paramètre permet de supprimer les agents qui ne sont plus présents dans OCSInventory. Et de définir la durée de conservation des agents dans ITSM-NG.

- Utiliser l'action automatique pour vérifier les règles d'affectation d'entité depuis OCSNG: ce paramètre permet de vérifier les règles d'affectation d'entité depuis OCSInventory.

- Utiliser les verrous automatiques : 

## Ajoût du serveur OCSInventory
Une fois les informations renseignées, cliquer sur le bouton "Ajouter" pour ajouter le serveur OCSInventory dans ITSM-NG.


## Testé la configuration
Une fois que vous êtes sur la page du serveur créée, vous pouvez tester la configuration en allant dans l'onglet "Test". Vous devriez voir apparaitre ce message de confirmation si la configuration est correcte.
`Connexion à la base de données réussie
Version et Configuration OCSNG valide`

S'il vous demande d'activer TRACE_DELETED, aller dans la configuration de votre serveur OCSInventory. Dans Configuration > Configuration générale > Serveur -> TRACE_DELETED: ON.


# Configuration de la tâche CRON
Pour que la synchronisation automatique fonctionne, il faut ajouter une tâche CRON sur le serveur ITSM-NG.

Vous pouvez l'ajouter avec la commande `crontab -e`

```
*/5 * * * * php /usr/share/itsm-ng/plugins/ocsinventoryng/scripts/run.php --thread_nbr=2
```
Notes :
Avec l'option thread_nbr vous pouvez définir le nombre de threads que peut prendre cette tâche.
```/usr/share/itsm-ng```: est le chemin vers ITSM-NG avec le paquet DEB et RPM, il faut l'adapter pour un autre type d'installation par exemple `/var/www/itsm-ng`.

