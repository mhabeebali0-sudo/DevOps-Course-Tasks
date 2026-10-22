#!/bin/bash
#Date: 16-10-2026
#Descriptions: Create a bash script to check if the Nginx service is running, if not running then script should start the service

echo "Checking Nginx service..."

if systemctl is-active --quiet nginx
then
    echo "Nginx is already running."
else
    echo "Nginx is not running. Starting Nginx..."

    systemctl start nginx

    if [ $? -eq 0 ]
    then
        echo "Nginx started successfully."
    else
        echo "Failed to start Nginx."
        exit 1
    fi
fi
