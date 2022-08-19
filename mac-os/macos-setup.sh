#!/bin/bash

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install ZSH and set as default shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# Install wget
brew install wget

# Install Cask - Used to install MacOS applications
# List of installable applications found at https://formulae.brew.sh/cask
brew tap caskroom/cask

# Install Java
brew cask install java

# Install web browsers
brew cask install google-chrome
brew cask install firefox
brew cask install tor-browser

# Install note taking app
brew cask install evernote

# Install suite of office apps
brew cask install openoffice

# Install e-mail client
brew cask install thunderbird

# Install Spotify
brew cask install spotify

# Install messenger app
brew cask install whatsapp

# Install file hosting service
brew cask install dropbox

# Install password manager
brew cask install enpass

######## SOFTWARE DEVELOPMENT ########

# Install IDEs
brew cask install visual-studio-code
brew cask install visual-studio
brew cask install sublime-text

# Install MySQL client
brew cask install sequel-pro

# Install MongoDB client
brew cask install robo-3t

# Install REST API client
brew cask install postman
