_unused_fonts=()

fonts=(
  # "CozetteVector:9.5"
  # "SauceCodePro Nerd Font:8.5"
  "JetBrainsMono Nerd Font:8.5"
  "Hasklug Nerd Font:8.5"
  "Iosevka:8.5"
  "VictorMono Nerd Font:8.5"
  # "TerminessTTF Nerd Font:9.5"
)

random_index=$(($RANDOM % ${#fonts[@]}))
sed -i "s/family: .*/family: ${fonts[$random_index]%%:*}/g" $HOME/.config/alacritty/alacritty.yml
sed -i "s/size: .*/size: ${fonts[$random_index]##*:}/g" $HOME/.config/alacritty/alacritty.yml
touch $HOME/.config/alacritty/alacritty.yml
