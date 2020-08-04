#!/bin/sh

# Required stuff
wal -R -n &
superpaper --setimages ~/media/pictures/weathering-with-you-8k-cropped.png --inches 24 24 --bezels 10 10 &
~/.config/polybar/launch.sh &
~/.config/picom/launch.sh &
dunst &
/usr/lib/polkit-kde-authentication-agent-1 &
light-locker &

# Other
discord-canary &
pulseeffects &
#/usr/lib/premid/premid &
