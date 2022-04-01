# gtk theme
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme
./install.sh --tweaks rimless normal
cd ..
# icon theme
git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme
./install.sh
cd..

#clean up
rm -rf Colloid-gtk-theme
rm -rf Colloid-icon-theme
