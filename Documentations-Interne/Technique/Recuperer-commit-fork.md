---
title: Récuperation des commits d'un fork
description: 
published: true
date: 2024-07-30T07:40:37.353Z
tags: 
editor: markdown
dateCreated: 2024-07-30T07:40:37.353Z
---

# Ajout du fork dans son projet git
```bash
git remote add antoine https://github.com/AntoineLemarchand/itsm-ng
```

# Recuperation de la branche et création d'une branche local
```bash
git switch -c fix_documents_import antoine/main
```
