#!/bin/bash

# Path where screenshots will be saved
SCREENSHOT_DIR=~/screen-log
mkdir -p "$SCREENSHOT_DIR"

# Interval in seconds between screenshots
INTERVAL=300

# Start taking screenshots
while true; do
    FILENAME="$SCREENSHOT_DIR/$(date '+%Y-%m-%d_%H%M%S.png')"
    scrot -q 1 $FILENAME;
    convert $FILENAME -resize 20% $FILENAME
    sleep $INTERVAL
done &
PID=$!
echo $PID > /tmp/screenshot_pid

# Command to stop everything, including the yad process
STOP_CMD="if [ -f /tmp/screenshot_pid ]; then kill \$(cat /tmp/screenshot_pid) && rm /tmp/screenshot_pid; fi; if [ -f /tmp/yad_pid ]; then kill \$(cat /tmp/yad_pid) && rm /tmp/yad_pid; fi"

# Launch yad with tray icon using nohup and disown
nohup yad --notification --image="camera-photo" --text="Click to stop screenshots" \
    --command="bash -c '$STOP_CMD'" \
    --listen > /dev/null 2>&1 &
YAD_PID=$!
echo $YAD_PID > /tmp/yad_pid

# Detach the process if not in debug mode
if [[ "$1" != "debug" ]]; then
    disown
fi