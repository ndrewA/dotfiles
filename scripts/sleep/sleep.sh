#!/bin/bash

# Get the current hour (24-hour format)
CURRENT_HOUR=$(date +'%H')

# Check if the current hour is 22 (10 PM) or later, or if it's before 6 AM
if [ "$CURRENT_HOUR" -ge 22 ] || [ "$CURRENT_HOUR" -lt 6 ]; then
    # Power off the computer
    # poweroff
fi
