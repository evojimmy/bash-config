if [ ! "$TERM" = "linux" ]; then
    export TERM=xterm-256color
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

