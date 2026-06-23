#!/bin/bash

pwr_profile=$(powerprofilesctl get)

echo "Debug: $pwr_profile"
notify-send "Power Profile" "Power profile is set to $pwr_profile" --icon=info