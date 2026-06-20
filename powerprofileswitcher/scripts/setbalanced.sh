#!/bin/bash

powerprofilesctl set balanced

notify-send 'Power Profile' 'Switched to Balanced Mode' --icon=power-profile-balanced-symbolic

cat > "$HOME/.local/share/powerprofileswitcher/currentprofile.desktop" <<'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=Current Mode: Balanced
Icon=power-profile-balanced-symbolic
OnlyShowIn=XFCE;
Exec=
Categories=powerprofile;
EOF
