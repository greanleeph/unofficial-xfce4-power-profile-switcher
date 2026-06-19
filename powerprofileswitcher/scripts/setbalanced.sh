#!/bin/bash

powerprofilesctl set balanced

notify-send 'Power Profile' 'Switched to Balanced Mode' --icon=draw-circle

cat > "$HOME/.local/share/powerprofileswitcher/currentprofile.desktop" <<'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=Current Mode: Balanced
Icon=draw-circle
OnlyShowIn=XFCE;
Exec=
Categories=powerprofile;
EOF
