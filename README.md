# Personal Dotfiles

A collection of dotfiles that I use on any systems that will support them.

## Noteworthy:

* config/bash/ssh-agent.sh
  * If the executable bit is set ssh-agent will be started if not already running.  If it is, the environment will be set correctly.
* config/tmux/autoconnect.sh.
  * If the executable bit is set, tmux will check the terminal type (it wants xterm-256color) and if it appears to be over an SSH connection.  If both of these conditions are met, it will either create or reconnect to an existing session that is named after the current username, depending on current state.
