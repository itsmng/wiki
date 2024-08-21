---
title: Tache CRON de l'agent OCS sur RHEL
description: 
published: true
date: 2024-06-27T07:44:49.220Z
tags: 
editor: markdown
dateCreated: 2024-06-27T07:44:49.220Z
---

# Activation de la tache cron
Modifier le fichier **/etc/sysconfig/ocsinventory-agent** et mettre OCSMODE[0] à `cron`.

```ini
#
# OCS Inventory "Unix Unified Agent" Configuration File
# used by hourly cron job
#

# Add tools directory if needed (tw_cli, hpacucli, ipssend, ...)
PATH=/sbin:/bin:/usr/sbin:/usr/bin

# Mode, change to "cron" to activate
OCSMODE[0]=cron

# Wait before inventory
OCSPAUSE[0]=100

```