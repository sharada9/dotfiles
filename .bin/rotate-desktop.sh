#!/usr/bin/env bash

output="LVDS1"

devices[0]="Wacom ISDv4 E6 Pen stylus"
devices[1]="Wacom ISDv4 E6 Pen eraser"
devices[2]="Wacom ISDv4 E6 Finger touch"

rotate_devices() { mode="$1"
  for device in "${devices[@]}"; do
    xsetwacom set "$device" rotate "$mode"
  done
}

rotation="$(xrandr -q --verbose | grep "$output connected" | egrep -o  '\) (normal|left|inverted|right) \(' | egrep -o '(normal|left|inverted|right)')"

case "$rotation" in
    normal)
    xrandr --output "$output" --rotate left
    rotate_devices ccw
    ;;
    left)
    xrandr --output "$output" --rotate inverted
    rotate_devices half
    ;;
    inverted)
    xrandr --output "$output" --rotate right
    rotate_devices cw
    ;;
    right)
    xrandr --output "$output" --rotate normal
    rotate_devices none
    ;;
esac
