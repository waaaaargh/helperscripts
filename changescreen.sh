#!/bin/sh

intdisplay="LVDS1"
extdisplay="VGA1"

if [ "$1" = "int" ]; then
	xrandr --output $intdisplay --auto --output $extdisplay --off
elif [ "$1" = "ext" ]; then
	xrandr --output $extdisplay --auto --output $intdisplay --off
else
	echo Comman line options not recognized. kthxbai. 
fi
