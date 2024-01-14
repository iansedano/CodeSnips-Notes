#!/bin/bash

# Add this to your crontab to run every hour

# 0 * * * * /.../get-my-ip.sh


IP_FILE="$HOME/current_ip.txt"
CURRENT_IP=$(curl -s http://ifconfig.me)
TIMESTAMP=$(date)

# Read the last recorded IP address
LAST_IP=$(tail -n 1 $IP_FILE | awk '{print $1}')

# Compare and append if different
if [ "$CURRENT_IP" != "$LAST_IP" ]; then
    echo "$CURRENT_IP $TIMESTAMP" >> $IP_FILE
fi
