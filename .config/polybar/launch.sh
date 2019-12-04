#!/bin/sh

# Stuff
wal -R

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# bar
env MONITOR=DP-0 polybar main &
env MONITOR=DP-2 polybar main &
