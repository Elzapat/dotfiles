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

export TERM=screen-256color
export EDITOR=nvim
export QT_STYLE_OVERRIDE=adwaita

export MANPAGER="less -s -M +Gg"
export LESS="--RAW-CONTROL-CHARS"
less_colors=$HOME/.scripts/.LESS_TERMCAP
[[ -f $lesscolors ]] && . $lesscolors

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ]; then
  [ -z "${TMUX}" ] && { tmux attach || tmux new -s "tmux"; } >/dev/null 2>&1
fi

if [ "$(command -v exa)" ]; then
  unalias -m 'll'
  unalias -m 'l'
  unalias -m 'la'
  unalias -m 'ls'
  alias ls='exa -G --color auto --icons -a -s type'
  alias ll='exa -l --color always --icons -a -s type'
fi

if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="gruvbox-dark"'
fi

source "$HOME/.cargo/env"
setxkbmap -option caps:swapescape

neofetch

export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C "/usr/bin/symfony self:autocomplete --zsh" symfony

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/morgan/.local/share/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/home/morgan/.local/share/miniconda3/etc/profile.d/conda.sh" ]; then
    . "/home/morgan/.local/share/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="/home/morgan/.local/share/miniconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<

# random font
bash $HOME/.scripts/choose_random_font.sh
