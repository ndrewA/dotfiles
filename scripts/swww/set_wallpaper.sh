#!/bin/bash

# Define the default wallpapers directory and the file to track the last wallpapers used.
WALLPAPERS_DIR=~/Pictures/Wallpapers
LAST_WALLPAPER_FILE="$HOME/dotfiles/scripts/swww/.last_wallpapers_used"

# Function to update the wallpaper queue in the file
update_wallpaper_queue() {
    local new_wallpaper=$1
    echo "Adding new wallpaper to the queue: $new_wallpaper"
    if [ -f "$LAST_WALLPAPER_FILE" ]; then
        # Read the last three wallpapers, add the new one to the front, and keep only the last three entries
        wallpapers=$(cat "$LAST_WALLPAPER_FILE")
        echo "Current queue before adding new: $wallpapers"
        echo -e "$new_wallpaper\n$wallpapers" | head -n 3 > "$LAST_WALLPAPER_FILE"
    else
        echo "$new_wallpaper" > "$LAST_WALLPAPER_FILE"
    fi
    echo "Updated wallpaper queue:"
    cat "$LAST_WALLPAPER_FILE"
}

# Check if a specific wallpaper was provided as an argument.
if [[ -n "$1" && -f "$1" ]]; then
    SPECIFIC_WALLPAPER="$1"
else
    if [ -f "$LAST_WALLPAPER_FILE" ]; then
        # Avoid the last three used wallpapers
        mapfile -t used_wallpapers < "$LAST_WALLPAPER_FILE"
        exclude_patterns=$(printf "! -name %s " "${used_wallpapers[@]##*/}")
        SPECIFIC_WALLPAPER=$(find "$WALLPAPERS_DIR" -type f $exclude_patterns | shuf -n 1)
    fi
    # If no valid new wallpaper found (or file doesn't exist), select any
    if [[ -z "$SPECIFIC_WALLPAPER" || ! -f "$SPECIFIC_WALLPAPER" ]]; then
        SPECIFIC_WALLPAPER=$(find "$WALLPAPERS_DIR" -type f | shuf -n 1)
    fi
fi

# Function to set wallpaper, update the system theme, and apply a random transition position.
set_wallpaper() {
    update_wallpaper_queue "$1" # Update the wallpaper queue with the current wallpaper

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
