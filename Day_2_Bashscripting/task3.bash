#!/bin/bash
#Date:16-10-2026
#Description: Create a bash script to take a backup of a directory.
echo Enter directory path to back up.
echo
read dir
echo
if [ -d $dir ]
then
	tar cvf Newbackup.bak -C $(dirname $dir) $(basename $dir)
	if [ $? -eq 0 ]
	then
		echo Backup created successfully.
	else
		echo Backup failed.
		exit 1
	fi
else
	echo Directory does not exist.
	exit 1
fi

