#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias ..='cd ..'
alias ...='cd ../..'

alias tty-clock='tty-clock -s -c -C 4 -f "%d-%m-%Y"'
alias ff='fastfetch'

export SUDO_EDITOR="nvim"
