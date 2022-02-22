# Based on https://sourceware.org/legacy-ml/cygwin/2001-06/msg00537.html
SSH_ENV_FILE="$HOME/.ssh/agent-environment"

function start_agent {
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV_FILE}"
    chmod 600 "${SSH_ENV_FILE}"
    . "${SSH_ENV_FILE}" > /dev/null
}

# Source SSH settings, if applicable
if [ -d "$HOME/.ssh" ]; then
    if [ -f "${SSH_ENV_FILE}" ]; then
        . "${SSH_ENV_FILE}" > /dev/null

        #ps ${SSH_AGENT_PID} doesn't work under cywgin
        ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
            start_agent;
        }
    else
        start_agent;
    fi
fi
