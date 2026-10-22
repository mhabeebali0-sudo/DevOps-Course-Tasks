#!/bin/bash
#Date: 21-10-2026
#This bash script will help us to make multiple files

echo "Do you want to create multiple 0KB files?"
echo
read ans
echo
if [ $ans = yes ]
then
	for number in {1..5}
	do
		touch $number
	done
	else
		echo "Thank you for executing this script, bye."
fi

