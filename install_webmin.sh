#!/bin/bash

# youtube : https://www.youtube.com/@linuxnetworkinghelp
# PLEASE SUBSCRIBE

# Update package index
sudo apt update

# Install dependencies
sudo apt install -y gnupg2 wget

# Add Webmin repository key
wget -qO- http://www.webmin.com/jcameron-key.asc | sudo apt-key add -

# Add Webmin repository to package sources
echo "deb http://download.webmin.com/download/repository sarge contrib" | sudo tee /etc/apt/sources.list.d/webmin.list

# Update package index again to include Webmin repository
sudo apt update

# Install Webmin
sudo apt install -y webmin

# Allow Webmin through firewall
sudo ufw allow 10000/tcp

echo "Webmin installation completed. Please Subscibe  https://www.youtube.com/@linuxnetworkinghelp"
