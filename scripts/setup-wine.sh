#!/bin/bash
set -e

echo "🔧 Setting up Wine and Grapejuice..."

# Ensure Wine prefix is initialized
export WINEPREFIX="$HOME/.wine"
wineboot --init

# Install Grapejuice via Flatpak (already installed in Dockerfile, but safe to re-run)
flatpak install -y flathub com.github.Matoking.grapejuice || true

# Optional: Create Roblox launcher shortcut
mkdir -p ~/Desktop
cat <<EOF > ~/Desktop/Roblox.desktop
[Desktop Entry]
Name=Roblox (Wine)
Exec=flatpak run com.github.Matoking.grapejuice
Type=Application
Icon=wine
Terminal=false
EOF
chmod +x ~/Desktop/Roblox.desktop

echo "✅ Wine and Grapejuice setup complete."
