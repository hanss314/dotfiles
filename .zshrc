# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hanss/.zshrc'
zstyle ':completion:*' menu yes select

autoload -Uz compinit
compinit
# End of lines added by compinstall

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
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
POWERLINE_DISABLE_RPROMPT="true"
. /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

