# Docker for Dudestack

**Status: Experimental & testing. Do not use as main dev env.**

Dudestack-docker is a modern development server environment for WordPress that uses Docker, without VirtualBox. The goal is to build as lightweight, minimal and clean **local WordPress development environment** as possible for several developers to use and collaborate.

If you are a newcomer and want to understand what is Docker, read Tomaž Zaman's excellent [WordPress Developer’s Intro To Docker](https://codeable.io/wordpress-developers-intro-docker/) and you will sure get it!

## Table of contents

1. [Background](#background)
2. [Requirements](#requirements)
3. [Features](#features)
4. [Getting started](#getting-started)

## Background

We have been using Vagrant from *20 Dec 2014* ([marlin-vagrant](https://github.com/digitoimistodude/marlin-vagrant)), but after hundreds of projects, it started getting quite heavy performance- and resource-wise. For front end development, it was time to move to [baked-in LEMP stack on OS X](https://github.com/digitoimistodude/osx-lemp-setup) for faster performance (and boy, it's fast!).

However, after having numerous discussions with other developers around open source tools, decided to start getting into Docker during holiday month of July, 2017.

After getting through of dozen of (way too complicated) Docker setups, this repository was born, based on [wp-docker inspired by 10up](https://github.com/dwnload/wp-docker-bedrock) and many others.

## Requirements

- [Docker](https://www.docker.com/)
- [docker-compose](https://docs.docker.com/compose/)

## Features

 - Designed for pure WordPress development
 - Fast and easy to start with Docker
 - Supports [dudestack](https://github.com/digitoimistodude/dudestack)
 - Finnish locale (change them in Dockerfile if you prefer something else)

| Feature          | Version                                                  |
|------------------|----------------------------------------------------------|
| MySQL            | 10.2                                                     |
| PHP              | 7.0.10                                                   |
| nginx            | Latest mainline                                          |

## Getting started

1. Install newest [Docker for Mac](https://www.docker.com/) with Homebrew: `brew cask install docker` and run Docker.app
2. Register to [Docker Hub](https://hub.docker.com) and login from Docker app, or run `docker login`
3. Clone [dudestack](https://github.com/digitoimistodude/dudestack) repository to `~/Projects`
4. Go to cloned dir, run `sh bin/setup.sh`, choose Docker (number 3) and follow the instructions

**Plase note:** You can test this Docker setup standalone, if you clone the repo and put index.html to the root of the repo and just run:

```` bash
docker-compose up
````

## Aliases for WP-CLI, SSH and composer

```` bash
alias docker.ssh='sh bin/ssh.sh'
alias docker.wp='sh bin/wp.sh'
alias docker.composer='sh bin/composer.sh'
````
