#!/bin/bash

# Display power options menu
selected=$(echo -e "Lock\nLogout\nSleep\nShutdown\nRestart" | rofi -dmenu -p "Power Options")

# Take action based on the user's selection
if [ "$selected" == "Lock" ]; then
    # Lock the screen (use your preferred screen locker, e.g., i3lock, light-locker, etc.)
    i3lock  # Replace with your screen locker command if necessary
elif [ "$selected" == "Sleep" ]; then
    # Put the system to sleep
    systemctl suspend
elif [ "$selected" == "Shutdown" ]; then
    # Shutdown the system
    systemctl poweroff
elif [ "$selected" == "Restart" ]; then
    # Restart the system
    systemctl reboot
else
    # In case of no valid selection, do nothing
    echo "No valid option selected"
fi

