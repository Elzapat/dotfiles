#!/bin/bash
# scrot /tmp/screen.png
# # convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png 
# convert /tmp/screen.png -blur 0x4 /tmp/screen.png 
# convert /tmp/screen.png /home/morgan/.scripts/images/archlinux.png -gravity center -composite /tmp/screen.png
# [[ -f $1 ]] && convert /tmp/screen.png $1
# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
# betterlockscreen -u /tmp/screen.png
# rm /tmp/screen.png

desktop_screenshot () {
    scrot /tmp/screen.png
    i3lock -i /tmp/screen.png
    rm /tmp/screen.png
}

simple_betterlockscreen () {
    betterlockscreen -l
}

betterlockscreen_dynamic () {
    scrot /tmp/screen.png
    convert /tmp/screen.png -blur 0x4 /tmp/screen.png 
    convert /tmp/screen.png /home/morgan/.scripts/images/archlinux.png -gravity center -composite /tmp/screen.png
    [[ -f $1 ]] && convert /tmp/screen.png $1
    dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
    betterlockscreen -u /tmp/screen.png
    betterlockscreen -l
    rm /tmp/screen.png
}

simple_betterlockscreen
