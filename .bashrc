#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$' 
export EDITOR=vim

# No colors in tty
[[ `tty` == "/dev/tty"* ]] && return

alias clear='clear && neofetch --ascii_colors 5 5'
neofetch --ascii_colors 5 5 
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

