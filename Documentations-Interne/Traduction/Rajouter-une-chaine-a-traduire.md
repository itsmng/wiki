---
title: Rajouter une chaîne à traduire dans ITSM-NG
description: 
published: true
date: 2024-06-14T13:12:48.376Z
tags: weblate, traduction
editor: markdown
dateCreated: 2024-01-19T10:48:09.388Z
---

# Rajouter une traduction
Pour rajouter une traduction il faut rajouter la chaine dans **locales/glpi.pot**.

## Exemple
```pot
	#: templates/menus/nav/nav-settings.twig:22
	msgid "Menu position"
	msgstr ""
```

# Actualiser les fichiers de langue
```bash
	cd tools
  ./update_locales.sh
```

# Generer le .mo
```bash
	php bin/console locales compile
```

# Information
Une fois merger sur le depot main. La traduction sera disponible sur le Weblate.