# Personal Dotfiles

A collection of dotfiles that I use on any systems that will support them.

## Noteworthy:

* config/bash/ssh-agent.sh
  * If the executable bit is set, ssh-agent will be started if not already running.  If it is already running, the environment will be set to the existing instance.
* config/tmux/autoconnect.sh.
  * If the executable bit is set, tmux will check that the terminal type is xterm-256color.  If the condition is met it will [re]connect to a session that is named after the current username.
