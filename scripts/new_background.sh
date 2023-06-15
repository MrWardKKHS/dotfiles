#!/bin/bash

# The directory that contains the jpg files
dir_path="terminal_backgrounds"

cd ~
# Move to the directory
cd "$dir_path"
#!/bin/bash

# Check if there are jpg files
num_files=$(ls | grep -c ".jpg")
if [ $num_files -eq 0 ]; then
    echo "There are no jpg files in the directory."
    exit 1
fi

# Get all the jpg files into an array
files=( *.jpg )

# Rename the previous current.jpg file if it exists
if [ -f "current.jpg" ]; then
    # Find the smallest number not in use
    i=1
    while [[ -e "img$i.jpg" ]]; do
        i=$((i+1))
    done

    mv "current.jpg" "img$i.jpg"
    files=( *.jpg )
fi

# Select a random jpg file
random_file=${files[RANDOM % ${#files[@]}]}

# Rename it to current.jpg
mv "$random_file" "current.jpg"

powershell.exe Start-Process wt -WindowStyle Maximized
powershell.exe exit
