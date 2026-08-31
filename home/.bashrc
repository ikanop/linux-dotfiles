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

# Long views
alias l='eza -blF --git --header --group-directories-first --icons=auto --color=auto'
alias ll='eza -la --git --header --octal-permissions --group-directories-first --icons=auto --color=auto'
alias la='eza -la --git --header --group-directories-first --icons=auto --color=auto'
alias lm='eza -l --git --header --sort=modified --reverse --group-directories-first --icons=auto --color=auto'

# Compact and specialist views
alias l1='eza --oneline --group-directories-first --icons=auto --color=auto'
alias lt='eza --tree --level=2 --group-directories-first --icons=auto --color=auto'
alias l.='eza -a --oneline --color=never | grep -E "^\."'

export SUDO_EDITOR="nvim"
