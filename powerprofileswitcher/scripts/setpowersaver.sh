#!/bin/bash

powerprofilesctl set power-saver

notify-send 'Power Profile' 'Switched to Power Saving Mode' --icon=battery-profile-powersave

cat > "$HOME/.local/share/powerprofileswitcher/currentprofile.desktop" <<'EOF'
[Desktop Entry]
Version=1.0
Type=Application
Name=Current Mode: Power Saver
Icon=battery-profile-powersave
OnlyShowIn=XFCE;
Exec=
Categories=powerprofile;
EOF
