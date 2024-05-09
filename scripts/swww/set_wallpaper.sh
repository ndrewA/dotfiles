#!/bin/bash

# Define path to the lock file
LOCK_FILE="/tmp/wallpaper_change.lock"

# Check if lock file exists
if [ -f "$LOCK_FILE" ]; then
    echo "Another instance is running. Exiting..."
    exit 1
else
    # Create a lock file
    touch "$LOCK_FILE"
    # Ensure the lock file is removed on exit and also on interruption or error
    trap 'rm -f "$LOCK_FILE"; exit' INT TERM EXIT
fi

# File to store the shuffled wallpapers.
SHUFFLED_WALLPAPER_FILE="$HOME/dotfiles/scripts/swww/.shuffled_wallpapers"

# Function to set wallpaper, update the system theme, and apply a random transition position.
set_wallpaper() {
    # Generate random transition position coordinates
    RANDOM_X=$(awk -v min=0 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')
    RANDOM_Y=$(awk -v min=0 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')

    wal -i "$1" --backend colorz --saturate 0.6 # Generate and apply theme with Pywal

    pywalfox update &
    /home/andrew/.config/dunst/apply_pywall_theme.sh  # Apply Pywal theme to Dunst
    killall waybar
    waybar &

    # Apply the wallpaper with a random transition position
    swww img "$1" --transition-pos $RANDOM_X,$RANDOM_Y --transition-type grow
}

# Cycle the wallpaper
if [ -f "$SHUFFLED_WALLPAPER_FILE" ]; then
    # Read the first wallpaper and store all wallpapers into an array
    mapfile -t wallpapers < "$SHUFFLED_WALLPAPER_FILE"

    # Set the first wallpaper in the list as the current wallpaper
    set_wallpaper "${wallpapers[0]}"

    # Remove the first wallpaper from the list and append it to the end
    sed -i '1d' "$SHUFFLED_WALLPAPER_FILE"
    echo "${wallpapers[0]}" >> "$SHUFFLED_WALLPAPER_FILE"
else
    echo "Error: Wallpaper list file does not exist."
    exit 1  # The lock file will be removed by the trap
fi
