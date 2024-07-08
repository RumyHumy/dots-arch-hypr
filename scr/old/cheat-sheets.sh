#!/bin/bash
cd ~/dots/sheets
launch_cmd="launch sh -c vim"
ls_out=`echo \`ls\``
echo $ls_out | rofi -sep ' ' -dmenu -p 'monkey' "$ls_out"

