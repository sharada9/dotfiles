#!/bin/sh

xrandr --output DP1 --off --output LVDS1 --auto
feh --bg-center $HOME/.wall0.jpg

sudo ifconfig em0 down
sudo sh /etc/netstart iwn0
