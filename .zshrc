export ZSH="/home/morgan/.oh-my-zsh"

ZSH_THEME="elzapat"

plugins=(
  git rust
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

bindkey '^ ' autosuggest-accept
ZSH_HIGHLIGHT_STYLES[path]=bold

_fix_cursor() {
 echo -ne '\e[6 q'
}
precmd_functions+=(_fix_cursor)

alias zshconf="nvim /home/morgan/.zshrc"
alias nvimconf="nvim /home/morgan/.config/nvim/init.vim"
alias i3conf="nvim /home/morgan/.config/i3/config"
alias picomconf="nvim /home/morgan/.config/picom/picom.conf"
alias tmuxconf="nvim /home/morgan/.config/tmux/tmux.conf"
alias su="su -p"
alias rm="rm -iv"
alias re-source="source ~/.zshrc"
alias gitzip="git archive HEAD -o ${PWD##*/}.zip"

export GPG_TTY=$(tty)
export TERM=xterm-256color
export EDITOR=nvim
export QT_STYLE_OVERRIDE=adwaita

export CMAKE_EXPORT_COMPILE_COMMANDS=1

export MANPAGER="less -s -M +Gg"
export LESS="--RAW-CONTROL-CHARS"
less_colors=$HOME/.scripts/.LESS_TERMCAP
[[ -f $lesscolors ]] && . $lesscolors

# export P4IGNORE=p4ignore.txt
# export P4CONFIG=p4config.txt

#if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
#  [ -z "${TMUX}" ] && { tmux attach || tmux new -s "tmux"; } >/dev/null 2>&1
#fi
# zellij options --session-name mitsuki
if [ -n "${DISPLAY}" ]; then
  eval "$(zellij setup --generate-auto-start zsh | sed 's/zellij$/zellij options --session-name mitsuki/g')"
fi

if [ "$(command -v exa)" ]; then
  unalias -m 'll'
  unalias -m 'l'
  unalias -m 'la'
  unalias -m 'ls'
  alias ls='exa -G --color auto --icons -a -s type'
  alias ll='exa -l --color always --icons -a -s type'
  alias lll='exa -l --color always --icons -a -s type -T -L 2'
  alias llll='exa -l --color always --icons -a -s type -T -L 3'
  alias lllll='exa -l --color always --icons -a -s type -T -L 4'
fi

if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="gruvbox-dark"'
fi

source "$HOME/.cargo/env"
# if ! xinput | grep "Akko"; then
#   cd .
# else
#   setxkbmap -option caps:swapescape
# fi
setxkbmap -option caps:swapescape

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C "/usr/bin/symfony self:autocomplete --zsh" symfony

# random font
bash $HOME/.scripts/choose_random_font.sh

export STEAM_EXTRA_COMPAT_TOOLS_PATH=$STEAM_EXTRA_COMPAT_TOOLS_PATH:/mnt/games_disk/SteamLibrary/compatibilitytools.d
# export PATH=/home/morgan/software/android-sdk/:/home/morgan/software/android-sdk/bin:$PATH
# neofetch
# wthrr -f d

# pokemon-colorscripts --random --no-title

export QSYS_ROOTDIR="/home/morgan/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"
