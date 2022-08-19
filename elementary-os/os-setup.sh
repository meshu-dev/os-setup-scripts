#!/bin/bash

################## UPDATE SYSTEM ####################

sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade

################# ENABLE PPA ####################

sudo apt -y install software-properties-common

################# INSTALL APPLICATIONS ####################

sudo apt -y install vim
sudo apt -y install git
sudo apt -y install zsh
sudo apt -y install firefox
sudo apt -y install thunderbird
sudo apt -y install libreoffice
sudo apt -y install nautilus-dropbox

################# INSTALL APPLICATIONS - OH MY ZSH ####################

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s /bin/zsh

################# INSTALL APPLICATIONS - GOOGLE CHROME ####################

sudo curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo rm ./google-chrome-stable_current_amd64.deb

################# INSTALL APPLICATIONS - SPOTIFY ####################

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt -y update
sudo apt -y install spotify-client

################# INSTALL APPLICATIONS - SUBIME TEXT 3 ####################

sudo wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb &&
sudo dpkg -i sublime-text_build-3126_amd64.deb &&
sudo rm sublime-text_build-3126_amd64.deb

################# INSTALL APPLICATIONS - VISUAL STUDIO CODE ####################

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt -y install code

################# INSTALL TWEAKS ####################

sudo apt -y install gnome-tweaks
sudo apt-add-repository --yes ppa:philip.scott/elementary-tweaks
sudo apt -y install elementary-tweaks

################# INSTALL ELEMENTARY X THEME ####################

git clone https://github.com/surajmandalcell/elementary-x.git ~/.themes/elementary-x
gsettings set org.gnome.desktop.interface gtk-theme "elementary-x"
sh ~/.themes/elementary-x/install_fixed_icons.sh
sh ~/.themes/elementary-x/install_plank_themes.sh

################# CLEAN UP ####################

sudo apt -y autoclean
sudo apt -y autoremove
