#!/bin/bash
#Date: 16-10-2026
#Description: Create a bash script to install Nginx on an EC2 server.
dnf install nginx -y
if [ $? -eq 0 ]
then
	echo Nginx installed successfully!
else
	echo Nginx installation was failed!
	exit 1
fi
echo
echo
systemctl start nginx
echo
systemctl status nginx

