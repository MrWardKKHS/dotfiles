#!/usr/bin/env bash

task() {
    cd "$d"  
    git add . 
    git commit -m "Feedback in comments" 
    git push origin tumu || git push origin master 
    cd ..
}

for d in */ ; do
        task "$d" &
done
