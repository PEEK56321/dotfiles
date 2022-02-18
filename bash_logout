#
# ~/.bash_logout
#

# When leaving the console clear the screen to increase privacy.
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear ] && /usr/bin/clear
fi
