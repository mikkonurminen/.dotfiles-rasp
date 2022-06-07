#!/bin/bash

echo "Upgrading system..."
sudo apt-get -y update && sudo apt-get -y upgrade

echo "Install packages"
source ~/.dotfiles-rasp/packages.sh

echo "Symlink dotfiles"
source ~/.dotfiles-rasp/symlink.sh

echo "Install nvim packages"
nvim +PlugInstall +qall

echo "Configure git"
git config --global user.name "mikkonurminen"
git config --global user.email "mmnurm@gmail.com"

echo "Configure nginx..."
sudo cp ~/.dotfiles-rasp/nginx/mintranet /etc/nginx/sites-available/mintranet
sudo unlink /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/site-available/mintranet /etc/nginx/sites-enabled/

echo "Mintranet..."
sudo mkdir -p /var/www/mintranet
mkdir ~/projects
cd ~/projects
git clone https://github.com/mikkonurminen/mintranet.git
cd ~/projects/mintranet
echo "Install npm modules"
npm install
echo "Build site"
npm run build

echo "copying to www folder"
sudo cp -r ~/projects/mintranet/build/* /var/www/mintranet/

echo "restart nginx"
sudo systemctl restart nginx
