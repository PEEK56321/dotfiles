if [ -d "/usr/local/go/bin" ]; then
    which go > /dev/null

    if [ $? -eq 1 ]; then
        PATH="/usr/local/go/bin:$PATH"
    fi
fi
