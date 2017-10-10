---
title: "Eclimd"
date: 2017-10-05T09:18:04+11:00
draft: true
---

Have you ever found yourself annoyed with Eclipse? Missing vim keybinds? Disliking the high idle CPU usage? Well have I got the solution for you: [Elim](http://eclim.org/).

## What is Eclim?
Eclim is a toolset to help interface Vim, and other text editors with Eclipse. It installs plugins for both Eclipse Vim, and even Gvim to achieve this.

You can have Eclipse run headless while you use Vim, or have Eclipse run fully yet still have Vim, or have gVim embedded inside Eclipse as an editor. The possibilities are endless.

## How does it work?
Well it works quite simply by installing a plugin for Eclipse, Vim and gVim, after that it requires the User to start the Elimd (The Eclim daemon). This can be done from within Eclipse (Creating the headed mode) or from the commandline (Creating the headless mode).

Once Eclimd is running, your vim will interface with Eclipse through Eclimd automatically, meaning you can take advantage of a large portion of Eclipses features from Vim now.

## What features does it provide?
Some features that Eclim provides are:
* Autocompletion
* Error and Warning detection
* Error correction
* Source Code formatting
* Maven integration
* Buildpath configuration
* Java Import organization
* Getter and setter generation

## How do you set it up?
Most of the steps to getting Eclim setup are outlined in the documentation provided on their site. This documentation is thorough and very useful for anyone who wants to look into it. Although I've learnt there's a few workarounds required for me. So I'll share my workarounds, and a basic guide.

### Downloading
Well first you'll need to retrieve the installer file from the [Eclim website](http://eclim.org/).

### Running the installer
Once retrieved you'll need to execute the Java installer. This installer will setup the plugins for Eclipse, Vim and gVim.

### The workaround
Once the installer has run, the command `eclimd` might not be avaliable to execute. If this is the case, you'll need to find the executable. Mine was located at `~/.eclipse/org.eclipse.platform_4.7.1_155965261_linux_gtk_x86_64/plugins/org.eclim_2.7.0/bin/native/linux/eclimd`.

Once you've located your executable, you'll want to execute it, and perhaps alias or link a more memorable command to that path.

### Start Vim and test
