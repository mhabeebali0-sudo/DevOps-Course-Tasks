#!/bin/bash
#Date: 16-10-2026
#Descripting of the task: Create a bash script to check if a directory is available or not.
echo Enter directory path.
echo
read dir
echo
if [ -d $dir ]
then
	echo Directory exists
else
	echo Directory does not exist
fi
