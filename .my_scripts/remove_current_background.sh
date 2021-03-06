#!/bin/bash

CURRENT_BACKGROUND=$(cat /home/omer/Desktop/my_current_background.txt)

rm "/home/omer/.config/feh/$CURRENT_BACKGROUND"

/home/omer/.my_scripts/set_background_pic.sh
