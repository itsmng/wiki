---
title: whitelabel
description: 
published: true
date: 2024-06-19T09:03:53.084Z
tags: 
editor: markdown
dateCreated: 2023-11-03T13:39:15.259Z
---

Ce plugin a pour but de permettre à ses utilisateurs de modifier l'apparence de leur application ITSM-NG, pour unifier l'apparence de leur logiciel interne.

## Installation

L'installation de ce plugin se fait en suivant le processus standard pour les plugins ITSM, il suffit de cloner [le dépôt git](https://github.com/itsmng/whitelabel) ou [télécharger une version](https://github.com/itsmng/whitelabel/releases) et de le placer dans le dossier ITSM `plugins`.

Décompressez l'archive du plugin, définissez les droits d'Apache et profitez-en !

### Configuration des droits
Vous devez donner la permission d'ecriture a votre serveur web sur le dossier `plugins/whitelabel/uploads` ainsi le dossier `pics` et `css` de votre ITSM-NG.

#### Sur Debian
```bash
chown -R www-data:www-data /var/www/itsm-ng/plugins/whitelabel/uploads /var/www/itsm-ng/pics /var/www/itsm-ng/css
```
#### Sur RHEL
```bash
chown -Rhttpd:httpd /var/www/itsm-ng/plugins/whitelabel/uploads /var/www/itsm-ng/pics /var/www/itsm-ng/css
```


## Features

To custom the theme, go to `Setup > Plugins` and click on `White Label` plugin name.

![](/files/img/plugins/whitelabel/whitelabel_primary_color.png)

The `Primary color` corresponds to the top part color of the navigation bar.

![](/files/img/plugins/whitelabel/whitelabel_icon_color.png)

The `Header icons color` corresponds to the icons color at the top right of the navigation bar.

![](/files/img/plugins/whitelabel/whitelabel_menu_color.png)

The `Menu color` section allows you to fully customize the colors of the menu.

![](/files/img/plugins/whitelabel/whitelabel_alert_color.png)

The `Alert` section changes the style of the popups that appear at the bottom right of your screen when you create or update an item.

![](/files/img/plugins/whitelabel/whitelabel_tableheader_color.png)

With these options, you can customize the table headers style.

![](/files/img/plugins/whitelabel/whitelabel_objectname_color.png)

This option changes the color of the name of the object present in the various tables of the application.

![](/files/img/plugins/whitelabel/whitelabel_button_color.png)

The `Button color` section allows you to customize the style of all button type of ITSM-NG.

![](/files/img/plugins/whitelabel/whitelabel_img.png)

With these options, you can update the favicon application and the logos present at the top left of navigation bar and on the login page.

![](/files/img/plugins/whitelabel/whitelabel_import_css.png)

The Whitelabel plugin allows you to import your own css file.

Don't forget to save after modifications.

## Restore the ITSM-NG colors and logos

To restore ITSM-NG theme colors, go to `Setup > Plugins` and click on `White Label` plugin name.

At the bottom of the configuration form, you will find the `Restore colors` button. Click on it and .. TADAAAM ! The ITSM-NG colors are restored.

To restore logos or favicon, check the option you want to remove and click on `Save`.