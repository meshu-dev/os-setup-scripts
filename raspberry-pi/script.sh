#!/bin/bash

# Upgrade
sudo apt update -y
sudo apt full-upgrade -y

# Dependancies
sudo apt install -y git

# Themes
sudo apt install -y arc-theme
sudo apt install -y breeze-cursor-theme

# Oh My Zsh
sudo apt install -y zsh
chsh -s /bin/zsh
#sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Dock
sudo apt install -y plank

# Pi Apps
wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash

# Pi Kiss
curl -sSL https://git.io/JfAPE | bash

# Browser
sudo apt install -y chromium

# Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ${USER}
groups ${USER}
sudo su - ${USER}

# Docker compose
sudo apt install -y libffi-dev libssl-dev
sudo apt install -y python3-dev
sudo apt install -y python3 python3-pip
sudo apt install -y python3-bcrypt
sudo pip3 install docker-compose

# Clean up
sudo apt autoclean -y
sudo apt autoremove -y
