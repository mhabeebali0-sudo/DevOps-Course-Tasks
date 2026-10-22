#!/bin/bash

echo Please enter your marks.
echo
read marks
echo
if [ $marks -ge 80 ]
then
echo Grade A
elif [ $marks -ge 60 ]
then
echo Grade B
elif [ $marks -ge 40 ]
then
echo Grade C
elif [ $marks -ge 35 ]
then
echo Grade D
else
echo Better luch next time.
fi
