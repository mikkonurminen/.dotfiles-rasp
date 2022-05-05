#!/bin/bash

echo "Upgrading system..."
sudo apt-get -y update && sudo apt-get -y upgrade

echo "Install packages"
source ~/.dotfiles-rasp/packages.sh

echo "Symlink dotfiles"
source ~/.dotfiles-rasp/symlink.sh

echo "Install nvim packages"
nvim +PlugInstall +qall
