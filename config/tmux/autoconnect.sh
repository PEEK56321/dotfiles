# Set up an auto-reconnecting tmux session based on username.
# It should only apply to interactive SSH sessions.
if [[ $TERM == "xterm-256color" && $SSH_TTY && -z $TMUX ]]; then
    WHOAMI=`whoami`

    if tmux has-session -t $WHOAMI 2>/dev/null; then
        exec tmux -2 attach-session -t $WHOAMI
    else
        exec tmux -2 new-session -s $WHOAMI
    fi
fi
