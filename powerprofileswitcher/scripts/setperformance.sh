#!/bin/bash

powerprofilesctl set performance

notify-send 'Power Profile' 'Switched to Performance Mode' --icon=battery-profile-performance

cat > "$HOME/.local/share/powerprofileswitcher/currentprofile.desktop" <<'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=Current Mode: Performance
Icon=battery-profile-performance
OnlyShowIn=XFCE;
Exec=
Categories=powerprofile;
EOF
