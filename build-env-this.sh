#!/bin/bash
# Install Npm - NodeJs
sudo apt-get update
sudo apt-get -y install nodejs
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get -y install nodejs

# Install AWSCLI
sudo apt install awscli
