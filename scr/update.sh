#!/bin/bash

# Copying configs
cp -r ~/dots/conf/.bashrc ~/
mkdir -p ~/.config/hypr
cp -r ~/dots/conf/hypr/* ~/.config/hypr/
mkdir -p ~/.config/kitty
cp -r ~/dots/conf/kitty/* ~/.config/kitty/
mkdir -p ~/.config/cava
cp -r ~/dots/conf/cava/* ~/.config/cava/

# copy bins
sudo cp ~/dots/scr/bin/* /bin/.
