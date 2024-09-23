---
title: Accessibilité
description: 
published: true
date: 2024-06-14T13:51:45.435Z
tags: 
editor: markdown
dateCreated: 2023-11-03T13:50:52.497Z
---

# A propos de l'accessibilité dans ITSM-NG

L'accessibilité est un composant qui permet à l'utilisateur de naviguer facilement sur l'interface ITSM-NG, la rendant ainsi adaptée à chaque utilisateur.

## Liste des options d'accessibilité disponibles

* Échelle de l'interface utilisateur : modifier le niveau de zoom par défaut.
* Raccourcis clavier : utiliser des raccourcis pour passer facilement d'un onglet à l'autre.
* Police de l'interface utilisateur : changer la police de l'ITSM-NG. Voici la liste des polices disponibles :
    * Open Dyslexic Regular
    * Open Dyslexic Alta
    * Tiresias Info font

`Note : Open-Dyslexic est une police de caractères libre créée pour améliorer la lisibilité pour les lecteurs souffrant de dyslexie.`

Allez sur le lien suivant pour plus d'informations [https://opendyslexic.org/](https://opendyslexic.org/)

## Navigateurs supportés

* Firefox
* Brave
* Chrome
* Edge

`Note : FireFox n'implémente pas la directive du zoom css.`

## Configuration

Autoriser l'accès à la fonctionnalité d'accessibilité dans `Profiles`.

![allow profil permissions](/files/img/accessibility/allow_profil_permissions.png)

## Comment configurer l'accessibilité

### Pour moi-même

Allez dans `Préférence(Mes réglages) > Accessibilité`.

Vous pouvez ici modifier `la police` et `l'échelle` de l'interface utilisateur.

Vous pouvez également `activer/désactiver` les raccourcis.

![setup accessibility for myself](/files/img/accessibility/setup_accessibility.png)

Pour définir des raccourcis, _toggle_ the view, cliquez sur le raccourci que vous voulez changer et définissez la combinaison de touches avec votre clavier. Cliquez sur `Mise à jour`.

![set shortcuts](/files/img/accessibility/set_shortcut.png)

N'oubliez pas de cliquer sur `Sauvegarder` au bas du formulaire.

### Pour un autre utilisateur

Avec des droits d'administrateur, il est possible de mettre à jour les paramètres d'accessibilité de base pour un autre utilisateur.

Allez dans `Administration > Users` et cliquez sur l'utilisateur que vous voulez mettre à jour.
Allez dans l'onglet `Accessibilité`.

Ici, vous pouvez changer la police de l'interface utilisateur, l'échelle de l'interface utilisateur et les raccourcis "Activer/Désactiver".

![setup_accessibility_for_other.png](/files/img/accessibility/setup_accessibility_for_other.png)