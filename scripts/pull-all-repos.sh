#!/usr/bin/env bash

task() {
    cd "$1"  
    git add . 
    git stash -q
    git pull
    cd ..
}

for d in */ ; do
        task "$d" &
done
