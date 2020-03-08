#!/bin/sh

# Required stuff
wal -R &
superpaper --setimages ~/media/pictures/your-name.jpg   --inches 24 24 --bezels 10 10 &
~/.config/polybar/launch.sh &
~/.config/picom/launch.sh &
dunst &
/usr/lib/polkit-kde-authentication-agent-1 &
light-locker &

# Other
discord-canary &
pulseeffects &
#/usr/lib/premid/premid &
