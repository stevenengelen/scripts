#!/bin/bash

width=$(wmctrl -Gd | grep -m 1 'WA:' |awk '{print $9}' | cut -d'x' -f1)
height=$(wmctrl -Gd | grep -m 1 'WA:' | awk '{print $9}' | cut -d'x' -f2)

toolbarHeight=21
heightNoToolbar=$(($height - $toolbarHeight))
halfWidth=$(($width/2))
halfHeight=$(($heightNoToolbar/2))

if [ "$1" = "left" ]; then
	wmctrl -e 0,0,0,$halfWidth,$heightNoToolbar -r :ACTIVE:
elif [ "$1" = "right" ]; then
	wmctrl -e 0,$halfWidth,0,$halfWidth,$heightNoToolbar -r :ACTIVE:
elif [ "$1" = "up" ]; then
	wmctrl -e 0,0,0,$width,$halfHeight -r :ACTIVE:
elif [ "$1" = "down" ]; then
	wmctrl -e 0,0,$(($halfHeight+13)),$width,$(($halfHeight-13)) -r :ACTIVE:
fi
