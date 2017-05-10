#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias TODO='vim ~/TODO'
alias CLOCK='tty-clock -c -C 2'
alias PIPE='pipes -t 1 -r 0 -p 1'
alias MOON='curl wttr.in/moon'
alias WEATHER='curl wttr.in/sanandaj'
COLOR="\[$(tput setaf 3)\]"
RESET="\[$(tput sgr0)\]"

export PS1="${COLOR}╔ \W\n╚ \$${RESET} "
echo -en "\033[33m"; cat /home/mazhar/.config/ascii_art/skull
