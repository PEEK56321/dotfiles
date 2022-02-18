# Personal Dotfiles

A collection of dotfiles that I use on any systems that will support them.

Of particular note is config/tmux/autoconnet.sh.  If the executable bit is set (which it is by default), tmux will check the terminal type (it wants xterm-256color) and if it appears to be over an SSH connection.  If both of these conditions are met, it will either create or reconnect to an existing session that is named after the current username, depending on current state.
