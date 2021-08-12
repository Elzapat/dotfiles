#!/bin/bash

sleep 3
WINDOW=$(xdotool getactivewindow)
#xdotool mousedown --window $WINDOW 2
xdotool click --window $WINDOW --repeat 1000000000 --delay 200 3
