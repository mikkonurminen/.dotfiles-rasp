#!/bin/bash

echo "curl nodejs..."
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo bash -
sudo apt-get install -y nodejs \
  neofetch \
  nvim \
  nginx

# Neovim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

