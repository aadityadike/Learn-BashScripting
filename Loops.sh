#!/usr/bin/zsh

HOBBIES=("Reading Books" "Watching Animes" "Coding")

for item in ${HOBBIES}; do echo -n $item | wc -c; done
