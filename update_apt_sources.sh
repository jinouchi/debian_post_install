#!/bin/bash

# Add repos to /etc/apt/sources.list (change DISTRO to correct distro if needed): 

DISTRO="stretch"

# Comment out existing sources
sed --in-place=".bak" 's/^deb/# deb/g' /etc/apt/sources.list

echo "
# Begin post-install script added repos: 
deb http://deb.debian.org/debian $DISTRO main contrib non-free
deb-src http://deb.debian.org/debian $DISTRO main contrib non-free

deb http://deb.debian.org/debian-security/ $DISTRO/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ $DISTRO/updates main contrib non-free

deb http://deb.debian.org/debian $DISTRO-updates main contrib non-free
deb-src http://deb.debian.org/debian $DISTRO-updates main contrib non-free" >> /etc/apt/sources.list
