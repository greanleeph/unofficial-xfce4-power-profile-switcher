#!/bin/bash

powerprofilesctl set power-saver

notify-send 'Power Profile' 'Switched to Power Saver Mode' --icon=power-profile-power-saver-symbolic

cat > "$HOME/.local/share/powerprofileswitcher/currentprofile.desktop" <<'EOF'
[Desktop Entry]
Type=Application
Name=Current Mode: Power Saver
Icon=power-profile-power-saver-symbolic
OnlyShowIn=XFCE;
Exec=
Categories=powerprofile;
EOF
