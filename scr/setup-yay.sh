#!/bin/bashi	
echo "SETUP - Installing yay..."
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
rmdir -rf ~/yay
