#!/bin/bash
#Date: 16-10-2026
#Description: Bash script to monitor memory and if it is more than 80% then send email notification.

THRESHOLD=80
EMAIL="okayemailme@email.com"

while true
do
    memory_usage=$(awk '
        /MemTotal:/ {total=$2}
        /MemAvailable:/ {available=$2}
        END {
            if (total > 0)
                printf "%.0f", (total-available)*100/total
            else
                exit 1
        }
    ' /proc/meminfo)

    echo "Current memory usage: $memory_usage%"

    if [ -n "$memory_usage" ] && [ "$memory_usage" -gt "$THRESHOLD" ]
    then
        echo "Memory usage is ${memory_usage}% on $(hostname)." |
            mail -s "Memory Usage Alert" "$EMAIL"
    fi

    sleep 60
done
