# gtk theme
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme/
./install.sh --tweaks compact
cd ..
rm -rf Orchis-theme

# icon theme
git clone https://github.com/yeyushengfan258/Reversal-icon-theme.git
cd Reversal-icon-theme/
./install.sh -blue -black
cd ..
rm -rf Reversal-icon-theme

git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme/
./install.sh -c dark -t blue -i debian
cd ..
rm -rf WhiteSur-gtk-theme/
