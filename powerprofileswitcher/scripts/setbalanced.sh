#!/bin/bash

powerprofilesctl set balanced

notify-send 'Power Profile' 'Switched to Balanced Mode' --icon=power-profile-balanced-symbolic

cat > "$HOME/.local/share/powerprofileswitcher/currentprofile.desktop" <<'EOF'
[Desktop Entry]
Type=Application
Name=Current Mode: Balanced
Icon=power-profile-balanced-symbolic
Exec=notify-send 'Power Profile' 'Power profile is set to Balanced Mode' --icon=power-profile-balanced-symbolic
Categories=powerprofile;
Comment=
Path=
Terminal=false
StartupNotify=false
EOF
