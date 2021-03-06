#!/bin/bash

PIC=$(/usr/bin/ls /home/omer/.config/feh | shuffle | head -n 1)

PIC_PATH="/home/omer/.config/feh/$PIC"

/usr/bin/feh --bg-scale "$PIC_PATH"

/usr/bin/echo $(basename "$PIC_PATH") > /home/omer/Desktop/my_current_background.txt
