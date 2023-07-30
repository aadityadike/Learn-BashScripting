#!/usr/bin/zsh

HOBBIES=("Reading Books" "Watching Animes" "Coding")

#If i want to access all of them:
echo {$HOBBIES} # echo {$HOBBIES[*]} & echo {$HOBBIES[@]}

# If i want a particular one then just put index:
echo {$HOBBIES[3]}
