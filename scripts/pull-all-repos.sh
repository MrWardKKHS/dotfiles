#!/usr/bin/env bash

task() {
    cd "$1"  
    git stash
    git pull
    cd ..
}

for d in */ ; do
        task "$d" &
done
