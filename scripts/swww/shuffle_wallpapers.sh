#!/bin/bash

# Define the default wallpapers directory and the file to store the shuffled wallpapers.
WALLPAPERS_DIR=~/dotfiles/Wallpapers
SHUFFLED_WALLPAPER_FILE="$HOME/dotfiles/scripts/swww/.shuffled_wallpapers"

# Shuffle all wallpapers in the directory and save to the file
find "$WALLPAPERS_DIR" -type f | shuf > "$SHUFFLED_WALLPAPER_FILE"
