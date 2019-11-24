#!/bin/sh

# Required stuff
wal -R &
~/.config/polybar/launch.sh &
~/.config/picom/launch.sh &
dunst &
/usr/lib/polkit-kde-authentication-agent-1 &
light-locker &

# Other
discord-canary &
pulseeffects &
#/usr/lib/premid/premid &
