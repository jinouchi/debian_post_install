#!/bin/bash

./update_apt_sources.sh
 
./upgrade.sh

# Install sudo:
apt install sudo git -y
#test