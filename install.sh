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

# fonts
# Fira Code Nerd font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
if [ -d "/home/$user/.fonts" ] 
then
    mkdir "/home/$user/.fonts/FiraCode"
    unzip FiraCode.zip -d "/home/$user/.fonts/FiraCode"
else
    mkdir "/home/$user/.fonts"
    mkdir "/home/$user/.fonts/FiraCode"
    unzip FiraCode.zip -d "/home/$user/.fonts/FiraCode"
fi
# weather icons
git clone https://github.com/erikflowers/weather-icons.git
cd weather-icons
if [ -d "/home/$user/.fonts" ] 
then
    mkdir "/home/$user/.fonts/WeatherIcons"
    cp -r font/* "/home/$user/.fonts/WeatherIcons"
else
    mkdir "/home/$user/.fonts"
    mkdir "/home/$user/.fonts/WeatherIcons"
    cp -r font/* "/home/$user/.fonts/WeatherIcons"
fi

rm -rf weather-icons
rm -rf FiraCode.zip
