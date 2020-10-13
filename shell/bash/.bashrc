#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Für vim
export VISUAL=vim
export EDITOR="$VISUAL"

# for my own scripts
export PATH=$PATH:~/.local/bin/

# discord
alias discord='~/Apps/Discord/Discord & disown'

# spotify
alias spotify='spotify & disown'

# chromium
alias chromium='chromium & disown'

# Arduino
alias arduino='~/arduino-1.8.10/arduino & disown'

# keepass
alias keepassxc='keepassxc & disown'

# libreofice
alias libreoffice='libreoffice & disown'

# sayonara
alias sayonara='sayonara & disown'

# minecraft
alias minecraft='minecraft-launcher & disown'

# Windows
alias windows='cd /windows'
