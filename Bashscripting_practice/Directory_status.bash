#!/bin/bash
#Date: 21-10-2026
#This script will help us to know if a directory is available or not


echo "Enter directory name along with its path."
echo
read dir
echo
if [ -d "$dir" ]
then
	echo "This directory is available"
else
	echo "Directory not found"
fi

echo "Do you want to create a new Directory?"
echo
read ans
echo
if [ $ans = yes ]
then
	echo "Enter your Directory name"
	echo
	read name
	mkdir $name
	echo "Directory has been created successfully."
fi
