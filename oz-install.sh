#!/bin/bash

# Basic Oz installation script for Debian/Ubuntu releases

# Should install tk8.6, emacs26

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y

wget -q https://github.com/mozart/mozart2/releases/download/v2.0.1/mozart2-2.0.1-x86_64-linux.deb

sudo apt install -y tk
sudo apt install -y emacs
sudo apt install -y ./mozart2-2.0.1-x86_64-linux.deb

rm ./mozart2-2.0.1-x86_64-linux.deb

export PATH=/usr/bin/oz:$PATH

# Runs a quick Oz test.
oz test.oz
