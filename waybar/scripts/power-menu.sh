#!/bin/bash

# Define options
entries="Shutdown\nReboot\nSuspend\nLogout"

# Launch fuzzel in dmenu mode
selected=$(echo -e "$entries" | fuzzel --dmenu --prompt="Power Menu: ")

# Execute based on selection
case $selected in
  Shutdown)
    systemctl poweroff;;
  Reboot)
    systemctl reboot;;
  Suspend)
    systemctl suspend;;
  Logout)
    hyprlock;;
esac
