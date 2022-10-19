#! /bin/bash

user=$(whoami)
for i in `cat packages.txt` ; do sudo dnf -y install $i; done

mkdir /home/$user/.config
mkdir /home/$user/.config/sway
mkdir /home/$user/.config/swaylock
mkdir /home/$user/.config/waybar
mkdir /home/$user/.config/alacritty

cd dotfiles
cp sway/* /home/$user/.config/sway
cp waybar/* /home/$user/.config/waybar
cp swaylock/* /home/$user/.config/swaylock
cp alacritty/* /home/$user/.config/alacritty
cd ..

xdg-user-dirs-update

cp wallapers/* /home/$user/Pictures

chmod +x themes.sh
./themes.sh

