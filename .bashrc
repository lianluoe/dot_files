#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#-----------------------------------------------
#	ALIAS
#-----------------------------------------------
alias ls='ls --color=auto'
alias ll='ls --color=auto -ltrh'
alias df='df -h'
alias grep='grep --color=auto'
alias TODO='vim ~/TODO'
alias EXC='vim ~/SS/Life\ Status/exercises.txt'
alias W='cd ~/SS/Programming/NodeJS/Codes/Udemy'

COLOR="\[$(tput setaf 5)\]"
RESET="\[$(tput sgr0)\]"
#PS1="${COLOR}\u @ \h ${RESET}\W ${COLOR}\$${RESET} "
export PS1="${COLOR}★ \W${RESET} "
echo -en "\033[35m";cat /home/m47h4r/.config/ascii_art/m

#-----------------------------------------------
#	COLORED MAN PAGES
#-----------------------------------------------
export LESS_TERMCAP_mb=$'\e[0;31m'
export LESS_TERMCAP_md=$'\e[0;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[7m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[0;35m'
