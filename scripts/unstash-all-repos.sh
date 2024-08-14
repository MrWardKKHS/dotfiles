#!/usr/bin/env bash

task() {
    cd "$1"  
    git add . 
    git stash pop 
    cd ..
}

for d in */ ; do
        task "$d" &
done
