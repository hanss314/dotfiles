#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$' 
export EDITOR=vim

TFALIAS='oops'
eval $(thefuck --alias $TFALIAS)
alias crap='$TFALIAS'
alias f='$TFALIAS'

alias clr='/bin/clear'

. /home/hanss/torch/install/bin/torch-activate

# No colors in tty
[[ `tty` == "/dev/tty"* ]] && return
[[ "$TERM" = "screen" ]] && [[ -n "$TMUX" ]] && return

alias clear='clear && neofetch'
neofetch
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

