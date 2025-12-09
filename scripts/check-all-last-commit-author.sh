#!/usr/bin/env bash

task() {
    cd "$1"  
    author=$(git log -1 --pretty=format:'%an')
    if [[ $(author) != "Alex Ward" ]]
    then
        return $(git 
    fi
    cd ..
}

for d in */ ; do
        task "$d" &
done
