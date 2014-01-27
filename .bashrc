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

export PYTHONSTARTUP=~/.pythonrc

alias lsd="ls -al --time-style=+%D | grep `date +%D`"
alias ll="ls -alrth"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias mkdir="mkdir -p"
alias vkeybd="vkeybd --octave 9"
alias octave="octave -qf"

export BREAK_CHARS="(){}[],^%$#@\"\";''|\\"

export PS1="[\u@\h \w]\\$ "

