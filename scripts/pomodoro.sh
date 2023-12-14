#!/bin/bash

# Pomodoro duration in minutes
POMODORO_DURATION=$1

if [ -z "$POMODORO_DURATION" ]; then
    echo "Usage: $0 <duration_in_minutes>"
    exit 1
fi

# Convert minutes to seconds
let "DURATION = POMODORO_DURATION * 60"

while true; do
    sleep $DURATION
    notify-send "Pomodoro Timer" "$POMODORO_DURATION minutes have passed!"
done
