#!/bin/bash

VOLUME_RAW=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%')
VOLUME=$(echo "$VOLUME_RAW" | head -n1 | grep -oP '\d+')
NORMALIZED_VOLUME=$((VOLUME / 2))

TITLE="Volume"

notify-send -u low "$TITLE" "" -h int:value:"$NORMALIZED_VOLUME" -h string:x-dunst-stack-tag:volume
