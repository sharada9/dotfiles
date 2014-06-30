#!/bin/sh

xrandr --output DP1 --auto --output LVDS1 --pos 2560x750
feh --bg-center $HOME/.wall0.jpg $HOME/.wall1.jpg

sudo ifconfig iwn0 down
sudo dhclient em0 # will handle resolv.conf
sudo sh /etc/netstart em0
