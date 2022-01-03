fonts=(
  # "CozetteVector:9.5"
  # "SauceCodePro Nerd Font:8.5"
  "JetBrainsMono Nerd Font:8.5"
  "Hasklug Nerd Font:8.5"
  "Iosevka:8.5"
  "VictorMono Nerd Font:8.5"
  # "TerminessTTF Nerd Font:9.5"
)

if [ "$HOSTNAME" = "morgan-desktop" ]; then
  fonts=(
    # "CozetteVector:9.5"
    # "SauceCodePro Nerd Font:8.5"
    "JetBrainsMono Nerd Font:13.0"
    "Hasklug Nerd Font:12.5"
    "Iosevka:12.5"
    "VictorMono Nerd Font:13.0"
    # "TerminessTTF Nerd Font:9.5"
  )
fi

random_index=$(($RANDOM % ${#fonts[@]}))
font=${fonts[$random_index]%%:*}
size=${fonts[$random_index]##*:}

sed -i "s/family: .*/family: $font/g" $HOME/.config/alacritty/alacritty.yml
sed -i "s/size: .*/size: $size/g" $HOME/.config/alacritty/alacritty.yml
touch $HOME/.config/alacritty/alacritty.yml
