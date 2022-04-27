if [ -d "/usr/local/go/bin" ]; then
    which go

    if [ $? -eq 1 ]; then
        PATH="/usr/local/go/bin:$PATH"
    fi
fi
