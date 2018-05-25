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
ZLE_RPROMPT_INDENT=0
alias ls='ls --color=auto'
export EDITOR=vim
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

TFALIAS='fuck'
eval $(thefuck --alias $TFALIAS)
alias crap='$TFALIAS'
alias f='$TFALIAS'
alias sudo='sudo '
alias clr='/bin/clear'

. /home/hanss/torch/install/bin/torch-activate

alias dd='safer_dd'
# No colors in tty
[[ `tty` == "/dev/tty"* ]] && return
[[ "$TERM" = "screen" ]] && [[ -n "$TMUX" ]] && return

alias clear='clear && neofetch'
neofetch
powerline-daemon -q
#POWERLINE_DISABLE_RPROMPT="true"
. $HOME/.config/powerline/themes/shell/powerline.zsh
