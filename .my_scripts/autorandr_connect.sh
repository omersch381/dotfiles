#!/bin/bash

# udev rules are run as Root, who can't act on user display if he doesn't know where it is
export XAUTHORITY=/home/omer/.Xauthority
export DISPLAY=:0

HDMI_STATUS=$(xrandr | awk '/HDMI/{print $2}')


if [ "$HDMI_STATUS" = "connected" ]; then
	    /usr/bin/xrandr --output LVDS-0 --off --output HDMI-0 --auto
else
	    /usr/bin/xrandr --output LVDS-0 --auto --output HDMI-0 --auto
fi
