#dependencies
DISTRO=`cat /etc/os-release | head -1 | sed 's/NAME="//' | cut -d ' ' -f 1`
if [ "$DISTRO" == "Arch" ]; then
    sudo pacman -S gtk-engine-murrine
elif [ "$DISTRO" == "Fedora" ]; then
    sudo dnf install gtk-murrine-engine
elif [ "$DISTRO" == "Debian" ]; then
    sudo apt install gtk2-engines-murrine
fi
# gtk theme
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme
./install.sh --tweaks rimless normal
cd ..
# icon theme
git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme
./install.sh
cd ..

#clean up
rm -rf Colloid-gtk-theme
rm -rf Colloid-icon-theme
