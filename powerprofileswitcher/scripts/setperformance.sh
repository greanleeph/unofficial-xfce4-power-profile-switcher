#!/bin/bash

powerprofilesctl set performance

notify-send 'Power Profile' 'Switched to Performance Mode' --icon=power-profile-performance-symbolic

cat > "$HOME/.local/share/powerprofileswitcher/currentprofile.desktop" <<'EOF'
[Desktop Entry]
Type=Application
Name=Current Mode: Performance
Icon=power-profile-performance-symbolic
OnlyShowIn=XFCE;
Exec=sh -c "$HOME/.local/share/powerprofileswitcher/scripts/getpwrprofile.sh"
Categories=powerprofile;
Comment=
Path=
Terminal=false
StartupNotify=false
EOF
