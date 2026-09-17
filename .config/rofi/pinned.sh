#!/bin/bash

# List of pinned apps
apps=(
"terminal:alacritty"
"firefox:firefox"
"thunar:thunar"
"nvim:nvim"
"libreoffice:libreoffice"
"rmpc:alacritty -e rmpc"
"packettracer:/usr/lib/packettracer/packettracer.AppImage"
"okular:okular"
"zathura:zathura"
"nmtui:alacritty -e nmtui"
)

# Rofi menu
chosen=$(printf "%s\n" "${apps[@]}" | cut -d':' -f1 | rofi -dmenu -p "Apps")

# Launch chosen app
for app in "${apps[@]}"; do
    name=$(echo $app | cut -d':' -f1)
    cmd=$(echo $app | cut -d':' -f2)
    if [[ "$chosen" == "$name" ]]; then
        $cmd &
        exit
    fi
done
