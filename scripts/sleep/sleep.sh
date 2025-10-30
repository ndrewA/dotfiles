#!/bin/bash

# Get the current time in HHMM format
CURRENT_TIME=$(date +'%H%M')

# If the current time is 21:30 (9:30 PM) or later, OR before 06:00 (6 AM), then power off.
if (( 10#$CURRENT_TIME >= 2130 || 10#$CURRENT_TIME < 600 )); then
    poweroff
fi

