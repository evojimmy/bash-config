# If not running interactively, don't do anything
if [[ $- != *i* ]] ; then
# Shell is non-interactive. Be done now!
return
fi

export EDITOR="zile"

#remove repetitive history commands
export HISTSIZE=20000
export HISTFILESIZE=100000
export HISTCONTROL=erasedups:ignorespace
shopt -s histappend

export PAGER=less
set -o noclobber
setterm -blength 0

alias lsd="ls -al --time-style=+%D | grep `date +%D`"
alias ll="ls -alrth"
alias pdf="qpdfview"
alias mid="aplaymidi --port=128:0"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias mkdir="mkdir -p"

export BREAK_CHARS="(){}[],^%$#@\"\";''|\\"

stty -tostop
shopt -s autocd
shopt -s cdspell


if [ -f ~/.dircolors ]; then
    eval `dircolors ~/.dircolors`
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
