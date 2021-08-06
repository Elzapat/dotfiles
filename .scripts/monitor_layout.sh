case $(hostname) in
    (morgan-dekstop) exec xrandr --output DVI-D-0 --mode 1920x1080 --pos 3200x0 --rotate normal --output HDMI-0 --mode 1280x1024 --pos 0x56 --rotate normal --output DP-0 --primary --mode 1920x1080 --pos 1280x0 --rotate normal --output DP-1 --off;;
    (morgan-laptop) xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --off;;
    (morgan-pi) ;;
