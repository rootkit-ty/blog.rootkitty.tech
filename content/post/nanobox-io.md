---
title: "Nanobox"
date: 2018-01-12T12:18:08+11:00
draft: true
---

# Nanobox
[Nanobox](https://nanobox.io) is a project that caught my eye recently. It provides a two major features that draw me two it.

The first being compartmentalization of development environments, removing the clutter of having a development environment on your workstation.

The second being a deployment mechanism for various aspects of a web application to any major cloud hosting provider.

## App development environments
Nanobox provides a nifty method of compartmentalizing and isolating your development environments.

No longer do you require node.js and all it's modules installed on your workstation, you can just have them installed within a docker intance specifically for that project.

This wonderful solution is achieved through writing a file called a [boxfile.yml](#boxfile.yml) that contains the steps to: develop, debug, compile and deploy your project. These steps are then automatically applied to a docker image during each stage of development.

{#boxfile.yml}
### The Boxfile.yml
The boxfile contains all the details required to create a docker container that be the whole of your development environment, and later production environment. Inlcuding databases, caches, web servers, and programming languages.

Everything that is required is installed, and isolated inside a docker image. From there development can begin.

The docker file also provides steps for compilation and deployment that can be cusotmized to allow essentially any
