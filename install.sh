#!/bin/bash

for file in $(ls -a | grep "^\.[^\.]"); do
    [[ "$file" == ".git" ]] && continue
    [[ "$file" == ".DS_Store" ]] && continue

    ln -si ~/dotfiles/$file ~/$file
done
