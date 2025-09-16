alias vim='nvim'
alias vmi='nvim'
alias ivm='nvim'
alias nvimdiff='nvim -d'
# alias vimc="NVIM_APPNAME=nvim-config-1 nvim"
# alias vimt="NVIM_APPNAME=nvim-config-2 nvim"

alias so="source ~/.bashrc"

alias power-low="powerprofilesctl set power-saver"
alias power-default="powerprofilesctl set balanced"
alias power-high="powerprofilesctl set performance"

alias dk="setxkbmap -option"
alias DK="setxkbmap -option"
alias ck="setxkbmap -option caps:ctrl_modifier"
alias CK="setxkbmap -option caps:ctrl_modifier"

alias ken='ibus engine xkb:us::eng'
alias kvi='ibus engine Bamboo'

alias sd='cd "$(find ~ ~/work ~/work/* ~/personal/ ~/personal/* -mindepth 1 -maxdepth 1 -type d | fzf)"'
