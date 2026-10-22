#!/bin/bash
#Date: 16-10-2026
#Description: Bash script to monitor disk space and if it is more than 80% then send email notification.

THRESHOLD=80
EMAIL="okayemailme@email.com"

while true
do
    disk_usage=$(df -P / | awk 'NR==2 {gsub("%","",$5); print $5}')

    echo "Current disk usage: $disk_usage%"

    if [ "$disk_usage" -gt "$THRESHOLD" ]
    then
        echo "Disk usage is ${disk_usage}% on $(hostname)." |
            mail -s "Disk Space Alert" "$EMAIL"
    fi

    sleep 60
done
