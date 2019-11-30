#!/bin/bash

# Stop all media
playerctl -a stop

# Mute audio
pactl set-sink-mute @DEFAULT_SINK@ 1

# Kill every browser
killall firefox
killall firefox.real
killall chrome

# Switch to a blank workspace
i3-msg workspace 0
