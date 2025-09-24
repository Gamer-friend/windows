# .devcontainer/Dockerfile
FROM lscr.io/linuxserver/webtop:ubuntu-mate

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Los_Angeles
ENV PUID=1000
ENV PGID=1000

# Install Wine, Flatpak, Grapejuice, and supporting tools
RUN apt update && apt install -y \
    wine64 \
    flatpak \
    curl \
    git \
    cabextract \
    unzip \
    sudo \
    fonts-wine \
    && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo \
    && flatpak install -y flathub com.github.Matoking.grapejuice \
    && apt clean && rm -rf /var/lib/apt/lists/*

# Copy assets (themes, icons, wallpaper)
COPY assets/ /config/assets/

# Optional: Set up Windows 11 theme
RUN mkdir -p /usr/share/themes/windows11 /usr/share/icons/windows11 \
    && cp -r /config/assets/gtk-theme/* /usr/share/themes/windows11/ \
    && cp -r /config/assets/icons/* /usr/share/icons/windows11/ \
    && cp /config/assets/wallpaper.jpg /config/wallpaper.jpg

# Set wallpaper and theme (Mate-specific)
RUN gsettings set org.mate.background picture-filename '/config/wallpaper.jpg' \
    && gsettings set org.mate.interface gtk-theme 'windows11' \
    && gsettings set org.mate.interface icon-theme 'windows11'

# Expose VNC/WebRTC ports
EXPOSE 3000 2000

# Startup script (optional)
COPY scripts/setup-wine.sh /config/scripts/setup-wine.sh
RUN chmod +x /config/scripts/setup-wine.sh && /config/scripts/setup-wine.sh
