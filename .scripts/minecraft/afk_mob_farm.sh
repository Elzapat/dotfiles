#!/bin/bash

sleep 3
WINDOW=$(xdotool getactivewindow)

while :; do
    xdotool mousedown --window $WINDOW 3
    xdotool click --window $WINDOW 1
    sleep 1;
done

# xdotool mousedown --window $WINDOW 3
# xdotool click --window $WINDOW --repeat 10000000 --delay 1000 1
