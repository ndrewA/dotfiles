#!/usr/bin/env bash

# Source the pywal color definitions
source "$HOME/.cache/wal/colors.sh"

# Define the path to your dunstrc template and the output path for the actual config
template="$HOME/.config/dunst/dunstrc_template"
output="$HOME/.config/dunst/dunstrc"
colors_file="$HOME/.cache/wal/colors"

# Check if the template exists
if [ ! -f "$template" ]; then
    echo "Template file not found: $template"
    exit 1
fi

# Check if the colors file exists
if [ ! -f "$colors_file" ]; then
    echo "Colors file not found: $colors_file"
    exit 1
fi

# Read colors into an array
mapfile -t colors < "$colors_file"

# Clear the output file to avoid appending to it multiple times
> "$output"

# Substitute color placeholders with actual values from the colors file
while IFS= read -r line; do
    for i in {15..0}; do
        # Detect if the line contains a transparency prefix for a color
        if [[ "$line" =~ ([0-9a-fA-F]{2})\$color$i ]]; then
            alpha="${BASH_REMATCH[1]}"
            # Append the alpha value after the RGB color value
            replacement="\"#${colors[$i]:1}${alpha}\""
            # Replace the entire placeholder including the alpha value with the new color code
            line="${line//${BASH_REMATCH[0]}/$replacement}"
            echo "Replaced ${BASH_REMATCH[0]} with $replacement in line: $line"
        elif [[ "$line" == *"\$color$i"* ]]; then
            # For colors without specified transparency, ensure quotes for consistency
            line="${line//"\$color$i"/"\"#${colors[$i]:1}\""}"
        fi
    done
    # Write the processed line to the output config file
    echo $line >> "$output"
done < "$template"

systemctl --user restart dunst  # Restart Dunst to apply the new theme

echo "Dunst configuration has been updated from template."
