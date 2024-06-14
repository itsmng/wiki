---
title: splitdropdown
description: 
published: true
date: 2024-06-14T13:12:33.252Z
tags: 
editor: markdown
dateCreated: 2023-11-03T13:41:50.634Z
---

This plugin allows you to split a dropdown into multiple dropdowns based on the level of splitting you want.

## Installation

Installing this plugin is done following the standard process for itsm plugins, simply clone [the git repository](https://github.com/itsmng/splitdropdown) or [download a release](https://github.com/itsmng/splitdropdown/releases) and place it within ITSM `plugins` folder.

Unzip the plugin archive, set Apache rights and enjoy !

## Usage

Go to `Configuration > Plugins` and click on `Split dropdown` to access the configuration.

![Add splitted dropdown](/splitdropdown/splitdropdown_add.png)

* Dropdown : select the dropdown to split (ITIL Categories / Locations)
* Enable split : Enable or disable splitting
* Level : splitting level

The splitting dropdown list is displayed below.

![Splitted dropdown list](/splitdropdown/splitdropdown_list.png)

When you add a new enabled splitted dropdown, a preview is displayed for you to test the dropdown split.

![Splitted dropdown preview](/splitdropdown/splitdropdown_preview.png)

`Note : a splitted dropdown is updated when you added the same dropdown type.`