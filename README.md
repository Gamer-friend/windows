> [!WARNING]
> I have no affiliation with Microsoft.  
> This project is purely educational and community-driven.  
> Production and Software development with CREDIT is allowed and required. 
> Using Windows Codespace Simulater with Docker Container (WCSWD) Without any docker lisence will be put to the subjects code 021 of DOCKER_REGULATION_RULES.

🪟 Windows11 Codespaces Desktop & VM
Run a Windows 11-style Linux desktop in GitHub Codespaces — or launch a full Windows 11 VM locally via Docker/KVM. Roblox-ready, beginner-friendly, and visually immersive.

# 🚀 Quick Start
Codespaces (Instant Desktop)

# One-click launch (GitHub Codespaces)
`gh codespace create --repo yourusername/windows11-codespaces`

# What this project is:
- Web-based Linux desktop with Windows 11 theme
- [BETA; NOT YET TESTED!] Wine + Grapejuice preinstalled
- [BETA; NOT YET TESTED!] Roblox launcher included

# HOSTING 
1. Fork This Repository, and open up a codespace on main.
2. Once evrything settles, in the terminal, write these commands:
3. `cd compose-windows`
4. `docker-compose up -d`

# What this does:
1. Runs dockurr/windows container
2. Full Windows 11 VM via QEMU/KVM
3. Access via RDP or browser

# 🧰 Features
- 🖼️ Windows 11 GTK theme + Fluent icons
- 🍇 Grapejuice + Wine preconfigured
- 🎮 Roblox launcher shortcut
- 🧪 Flatpak support
- 🧠 Beginner-friendly onboarding
- 🧱 Local VM option with persistent storage

# 📁 Repo Structure
- .devcontainer/       # Codespaces config
- compose-windows/     # Docker Compose for Windows VM
- scripts/             # Setup scripts (Wine, theme, etc.)
- assets/              # Wallpaper, icons, GTK theme
- config/              # Persistent desktop config
- README.md            # This file

# 📸 Screenshots
> [!CAUTION]
> []IMAGES FAILED TO LOAD; images/screenshot1.png
> []IMAGES FAILED TO LOAD; images/screenshot2.png
> []IMAGES FAILED TO LOAD; images/screenshot3.png
> []IMAGES FAILED TO LOAD; images/screenshot4.png

# 🧠 Credits
@dockurr/windows
- Grapejuice
- LinuxServer.io Webtop
- GTK themes and icons from Gnome-Look

# ⚠️ Limitations
- No GPU acceleration in Codespaces
- Roblox support is experimental
- VM requires Linux host with KVM

# ✨ Ritual Installer (Optional)
`sudo bash -c 'echo "Summoning the desktop..." && apt update && apt install -y c`
