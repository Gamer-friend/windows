#!/bin/bash
set -e

echo "🎨 Applying Windows 11 theme..."

# Set GTK theme and icons
gsettings set org.mate.interface gtk-theme "windows11"
gsettings set org.mate.interface icon-theme "windows11"

# Set wallpaper
gsettings set org.mate.background picture-filename "/config/wallpaper.jpg"

echo "✅ Windows 11 theme applied."
