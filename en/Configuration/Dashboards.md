---
title: Dashboards
description: 
published: true
date: 2024-06-14T13:12:49.897Z
tags: 
editor: markdown
dateCreated: 2023-12-28T12:15:40.825Z
---

# Dashboards
Since ITSM-ng 2.0, it is required to have an instance of [the ITSM-ng NesjtsJS API](https://github.com/itsmng/itsm-ng_api) to access the dashboard editor.

## API Installation

### Locally
- Install **[NodeJS LTS](https://nodejs.org/en) and [Yarn](https://yarnpkg.com/)** on the host machine.
- Download [the most recent release](https://github.com/itsmng/itsm-ng_api/releases) of the API.
- Modify the `.env-sample` file to your liking and rename it `.env`
- Start the application with `yarn start`
- It can then be accessed through the url described in `.env`
 
## ITSM-ng Configuration
On the ITSM-ng fronted, it is required to fill the API URL in this location:
`Configuration > Generale > API > URL de l'api dashboard`
