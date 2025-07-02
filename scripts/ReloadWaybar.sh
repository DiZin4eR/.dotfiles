#!/bin/bash

# Exit on any error
set -e

# Kill all running waybar instances
echo "Stopping Waybar..."
pkill waybar || echo "Waybar not running."

# Restart Waybar with nohup and log output
echo "Starting Waybar..."
nohup /usr/bin/waybar > "$HOME/waybar.log" 2>&1 &

# Wait a moment to ensure Waybar starts
sleep 1

# Copy theme file to btop themes directory
echo "Copying btop theme..."
cp "$HOME/.cache/wal/colors-btop.theme" "$HOME/.config/btop/themes" 2 >> "$HOME/waybar.log" || {
    echo "Failed to copy theme file."
    exit 1
}
