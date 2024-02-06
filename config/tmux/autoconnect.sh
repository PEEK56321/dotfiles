# Set up an auto-reconnecting tmux session based on username.
# It only applies to xterm-256 color so can be bypassed by using
# another terminal type (such as xterm).
if [[ $TERM == "xterm-256color" && -z $TMUX ]]; then
    WHOAMI=`whoami`

    if tmux has-session -t $WHOAMI 2>/dev/null; then
        exec tmux -2 attach-session -t $WHOAMI
    else
        exec tmux -2 new-session -s $WHOAMI
    fi
fi
