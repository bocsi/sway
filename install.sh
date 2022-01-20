#! /bin/bash

# aur helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..

sudo pacman -S --needed - < pkglist.txt
