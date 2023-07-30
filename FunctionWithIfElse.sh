#!/usr/bin/zsh

Verify() {
    if [ $USER = ${1} ]; then
        return 0
    else
        return 1
    fi
}

Verify $1

if [ $? = 1 ]; then
    echo "malicious activity found"
else
    echo "welcome Home"
fi
