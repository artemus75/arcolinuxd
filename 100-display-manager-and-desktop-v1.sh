#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Michael Melchers
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "If the downloads are too slow, run mirror"
echo ""

sudo pacman -Syyu
sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed
sudo pacman -S gnome --noconfirm --needed
sh AUR-DS/install-budgie-desktop-git-v*.sh
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

echo "Remove anything you do not like from the installed applications"
