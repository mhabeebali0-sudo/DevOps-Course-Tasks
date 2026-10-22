#!/bin/bash
#Date: 16-10-2026
#Description: Create a bash script to check if a directory exists, if not then create a directory.

echo "Enter directory name:"
read dir

if [ -d "$dir" ]
then
    echo "Directory already exists."
else
    mkdir -p "$dir"

    if [ $? -eq 0 ]
    then
        echo "Directory created successfully."
    else
        echo "Failed to create directory."
        exit 1
    fi
fi
