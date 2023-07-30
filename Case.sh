#!/bin/bash

case ${1,,} in
$USER | aditya)
    echo "Hey $USER"
    ;;
anything)
    echo "stay out of it"
    ;;
*)
    echo "Are you trying to hack me?"
    ;;
esac
