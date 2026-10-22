#!/bin/bash
#Date: 16-10-2026
#Description: Create a bash script to delete the last 3 lines of a file.

echo "Enter file name:"
read file

if [ -f "$file" ]
then
    sed -i '$d' "$file"
    sed -i '$d' "$file"
    sed -i '$d' "$file"

    if [ $? -eq 0 ]
    then
        echo "Last 3 lines deleted successfully."
    else
        echo "Failed to delete lines."
        exit 1
    fi
else
    echo "File does not exist."
    exit 1
fi
