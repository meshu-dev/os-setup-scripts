#!/bin/bash

sudo apt -y update
sudo apt -y full-upgrade

sudo apt -y install arc-theme
sudo apt -y install breeze-cursor-theme
sudo apt -y install chromium

sudo apt -y install plank

wget -qO- https://raw.githubusercontent.com/Botspot/pi-apps/master/install | bash

