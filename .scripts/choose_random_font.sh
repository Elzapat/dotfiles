fonts=("CozetteVector" "SauceCodePro Nerd Font" "JetBrainsMono Nerd Font" "Hasklug Nerd Font" "Iosevka"  "VictorMono Nerd Font")
unused_fonts=("TerminessTTF Nerd Font")
sizes=(9.5 8.5 8.5 8.5 8.5 8.5)

random_index=$(($RANDOM % ${#fonts[@]}))
sed -i "s/family: .*/family: ${fonts[$random_index]}/g" $HOME/.config/alacritty/alacritty.yml
sed -i "s/size: .*/size: ${sizes[$random_index]}/g" $HOME/.config/alacritty/alacritty.yml
touch $HOME/.config/alacritty/alacritty.yml
