#!/bin/bash

# Copying configs
cp ~/dots/conf/.bashrc ~/
mkdir -p ~/.config/hypr
cp -r ~/dots/conf/hypr/* ~/.config/hypr/
mkdir -p ~/.config/kitty
cp -r ~/dots/conf/kitty/* ~/.config/kitty/
mkdir -p ~/.config/cava
cp -r ~/dots/conf/cava/* ~/.config/cava/

# If tdots exists, then update
if [ -d ~/tdots ];
then
	~/tdots/update.sh
fi

# Syncing
~/dots/scr/sync.sh

# Syncing
~/dots/scr/sync.sh
