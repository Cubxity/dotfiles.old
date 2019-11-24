#!/bin/sh

# Terminate already running picom instances
killall -q picom

# Wait until the processes have been shut down
while pgrep -x picom >/dev/null; do sleep 1; done

picom --opacity-rule '100:window_type = "dock" && class_g = "i3bar"' -b
