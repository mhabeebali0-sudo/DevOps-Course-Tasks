#!/bin/bash
#Date: 21-10-2026
#This bash script will help us take a backup of any file or directory.

echo "Please enter a file or directory name (along with its path) for which you want to create a backup"
echo
read dir
echo
if [ -d "$dir" ]
then
	cp -r $dir /root/scripts/scripts_backup
	echo "Backup successful!"
elif [ -f "$dir" ]
then
	cp $dir /root/scripts/scripts_backup
	echo "Backup successful"
else
	echo "Backup failed!"
fi
