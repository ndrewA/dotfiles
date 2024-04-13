#!/bin/bash

# Define the default wallpapers directory and the file to track the last wallpaper.
WALLPAPERS_DIR=~/Pictures/Wallpapers
LAST_WALLPAPER_FILE="$HOME/scripts/swww/.last_wallpaper_used"

# Check if a specific wallpaper was provided as an argument.
if [[ -n "$1" && -f "$1" ]]; then
    SPECIFIC_WALLPAPER="$1"
else
    if [ -f "$LAST_WALLPAPER_FILE" ]; then
        LAST_WALLPAPER=$(cat "$LAST_WALLPAPER_FILE")
        SPECIFIC_WALLPAPER=$(find "$WALLPAPERS_DIR" -type f ! -name "$(basename "$LAST_WALLPAPER")" | shuf -n 1)
    else
        SPECIFIC_WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
    fi
fi

# Function to set wallpaper, update the system theme, and apply a random transition position.
set_wallpaper() {
    echo "$1" > "$LAST_WALLPAPER_FILE" # Save the current wallpaper path

    # Generate random transition position coordinates
    RANDOM_X=$(awk -v min=0 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')
    RANDOM_Y=$(awk -v min=0 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')

    # Apply the wallpaper with a random transition position
    swww img "$1" --transition-pos $RANDOM_X,$RANDOM_Y --transition-fps 90 --transition-type grow

    wal -i "$1"  # Generate and apply theme with Pywal
    /home/andrew/.config/dunst/apply_pywall_theme.sh  # Apply Pywal theme to Dunst
    killall waybar
    waybar &
}

# Apply the wallpaper.
set_wallpaper "$SPECIFIC_WALLPAPER"

exit 0
