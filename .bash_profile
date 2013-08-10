if [ ! "$TERM" = "linux" ]; then
    export TERM=xterm-256color
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
RUBYOPT=""

