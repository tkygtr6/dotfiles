#!/bin/bash

for file in $(ls -a | grep "^\.[^\.]"); do
    [[ "$file" == ".git" ]] && continue
    [[ "$file" == ".DS_Store" ]] && continue

    echo "create ~/$file ? [y]"
    read ans
    case $ans in "yes" | "YES" | "y" | "Y" )
        ln -si ~/dotfiles/$file ~/$file
        if [ $? = 0 ]; then
            echo "~/$file created"
        fi
        ;;
    esac
done
