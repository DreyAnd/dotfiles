#!/bin/bash

# Get the class name of the currently focused window
focused_class=$(xprop -id $(xdotool getwindowfocus) WM_CLASS | awk -F '"' '{print $4}')

# Define excluded classes
if [[ "$focused_class" == "Google-chrome" ]]; then
    exit 0 # Do nothing if the app is excluded
fi

# Close the window if it’s not excluded
i3-msg kill

