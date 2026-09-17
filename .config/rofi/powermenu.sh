#!/bin/bash

# -----------------------------
# Rofi Power Menu Script
# -----------------------------

# Options (one per line)
options="Shutdown\nReboot\nLogout\nSuspend"

# Launch Rofi dmenu
chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu" -theme ~/.config/rofi/config.rasi)

# Execute the chosen command
case "$chosen" in
    Shutdown) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Logout) i3-msg exit ;;
    Suspend) systemctl suspend ;;
esac
