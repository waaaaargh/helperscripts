#!/bin/sh

intdisplay="LVDS1"
extdisplay="VGA1"

if [ "$1" = "int" ]; then
    xrandr --output $intdisplay --auto --output $extdisplay --off
elif [ "$1" = "ext" ]; then
    xrandr --output $extdisplay --auto --output $intdisplay --off
elif [ "$1" = "both" ]; then
    if [ "$2" = "ext" ]; then
        if [ "$3" = "right" ]; then
            xrandr --output $intdisplay --auto --output $extdisplay --auto --right-of $intdisplay
        elif [ "$3" = "left" ]; then
            xrandr --output $intdisplay --auto --output $extdisplay --auto --left-of $intdisplay
        else
            echo Command Line options not recoginzed. kthxbai
        fi
    else
        echo Command line options not recognized. kthxbai
    fi
else
    echo Command line options not recognized. kthxbai. 
fi
