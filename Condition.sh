#!/bin/bash

if [ "${1,,}" = $USER ]; then
     echo "Welcome $USER"
elif [ "${1,,}" = "help" ]; then
     echo "Just enter your username"
else
     echo "Invalid input. Just get out of here"
fi
