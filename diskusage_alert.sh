#!/bin/bash

# Threshold for disk usage
THRESHOLD=20
EMAIL="kowshikmk08@gmail.com"

# Get disk usage percentage (just number)
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

# Check if usage exceeds threshold
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    SUBJECT="⚠️ Disk Usage Alert: $USAGE% used on $(hostname)"
    MESSAGE="Warning! Disk usage on $(hostname) is at ${USAGE}%. Please take action."
    echo "$MESSAGE" | mail -s "$SUBJECT" "$EMAIL"
fi

