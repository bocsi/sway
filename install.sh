#! /bin/bash

user=$(whoami)

# aur helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..

sudo pacman -S --needed - < packages.txt

chmod +x themes.sh

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

yay -S auto-cpufreq
sudo systemctl enable auto-cpufreq
sudo systemctl start auto-cpufreq
sudo systemctl enable bluetooth

# hp laptop
# git clone https://aur.archlinux.org/wd719x-firmware.git
# cd wd719x-firmware
# makepkg -sri
# git clone https://aur.archlinux.org/aic94xx-firmware.git
# cd aic94xx-firmware
# makepkg -sri
# yay -S upd72020x-fw
