#!/bin/bash

echo "Symlink .bashrc"
ln -nfs ~/.dotfiles-rasp/bashrc/.bashrc ~/.bashrc

echo "Symlink aliases"
mkdir -p ~/.config/aliases
ln -nfs ~/.dotfiles-rasp/aliases/bash_aliases ~/.config/aliases/bash_aliases

echo "Symlink neovim"
mkdir -p ~/.config/nvim
ln -nfs ~/.dotfiles-rasp/nvim/init.vim ~/.config/nvim/init.vim
ln -nfs ~/.dotfiles-rasp/nvim/coc.vim ~/.config/nvim/coc.vim
ln -nfs ~/.dotfiles-rasp/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

