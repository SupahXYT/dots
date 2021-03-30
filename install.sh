#!/bin/sh

current_dir=$(pwd)

# copy dot files
cp .bashrc $HOME
cp .bash_aliases $HOME
cp .xinitrc $HOME
cp -r .config $HOME
cd $HOME/git/dots/dwm && sudo make clean install
cd $HOME/git/dots/st && sudo make clean install
cd $HOME/git/dots/dmenu && sudo make clean install

# Software I use 

# sudo pacman -S 

# Install doas 
sudo pacman -S opendoas
sudo printf "permit nopass keepenv supahx as root\npermit nopass keepenv root as root\n" > /etc/doas.conf
sudo pacman -Rns sudo
