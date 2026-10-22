#!/bin/bash
#Date: 16-10-2026
#Description: Create a bash script to create multiple files.
for i in {1..5}
do
	touch file$i.txt
	echo "Created file$1.txt"
done
