# sway-arch
nano /etc/mkinitcpio.conf
MODULES=(i915 nouveau)
mkinitcpio -p linux
