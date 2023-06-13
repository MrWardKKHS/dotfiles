#!/usr/bin/env bash
echo 
echo It is assumed roster.txt lives in this directory with each username on a new line
echo 
echo What is the URL for the repo 
echo this should be without the student identifier 
echo E.G. https://github.com/Digital-Tech-KKHS/game-design-
read URL
input="./roster.txt"

task() {
        name=`echo "$1" | sed 's/ *$//g'`
        git clone $URL$name.git
}

while IFS= read -r line 
do
        task "$line" &
done < "$input"
