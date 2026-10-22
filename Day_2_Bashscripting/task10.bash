#!/bin/bash
#Date: 16-10-2026
#Description: Bash script to monitor cpu and if it is more than 80% then send email notification.

THRESHOLD=80
EMAIL="okayemailme@email.com"

while true
do
    cpu_idle=$(top -bn2 | grep "Cpu(s)" | tail -1 | awk -F',' '{print $4}' | awk '{print $1}')

    cpu_usage=$(awk -v idle="$cpu_idle" 'BEGIN {printf "%.0f", 100-idle}')

    echo "Current CPU usage: $cpu_usage%"

    if [ "$cpu_usage" -gt "$THRESHOLD" ]
    then
        echo "CPU usage is ${cpu_usage}% on $(hostname)." |
        mail -s "CPU Usage Alert" "$EMAIL"
    fi

    sleep 60
done
