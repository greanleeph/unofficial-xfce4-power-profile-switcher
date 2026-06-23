#!/bin/bash

powerprofilesctl set balanced

notify-send 'Power Profile' 'Switched to Balanced Mode' --icon=power-profile-balanced-symbolic

cat > "$HOME/.local/share/powerprofileswitcher/currentprofile.desktop" <<'EOF'
[Desktop Entry]
Type=Application
Name=Current Mode: Balanced
Icon=power-profile-balanced-symbolic
OnlyShowIn=XFCE;
Exec=sh -c "$HOME/.local/share/powerprofileswitcher/scripts/getpwrprofile.sh"
Categories=powerprofile;
Comment=
Path=
Terminal=false
StartupNotify=false
EOF
