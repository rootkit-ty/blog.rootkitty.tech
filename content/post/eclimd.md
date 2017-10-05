---
title: "Eclimd"
date: 2017-10-05T09:18:04+11:00
draft: true
---

Have you ever found yourself annoyed with Eclipse? Missing vim keybinds? Disliking the high idle CPU usage? Well have I got the solution for you: Eclim

## What is Eclim?
Eclim is a toolset to help interface Vim, and other text editors with Eclipse. It installs plugins for both Eclipse Vim, and even Gvim to achieve this.

You can have Eclipse run headless while you use Vim, or have Eclipse run fully yet still have Vim, or have gVim embedded inside Eclipse as an editor. The possibilities are endless.

## How does it work?
Well it works quite simply by installing a plugin for Eclipse, Vim and gVim. After that it requires the User to start the Elimd (The Eclim daemon). This can be done from within Eclipse (Creating the headed mode) or from the commandline (Creating the headless mode).

Once Eclimd is running, your vim will interface with Eclipse through Eclimd automatically, meaning you can take advantage of a large portion of Eclipses features from Vim now.

## What features does it provide?
Some of the features that Eclim provides are:
* Autocompletion
* Error and Warning detection
* Error correction
* Source Code formatting
* Maven integration
* Buildpath configuration
* Java Import organization
* Getter and setter generation
