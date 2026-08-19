#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar named 'example' (default name in the config.ini)
# The '-r' means to reload the bar if it's already running
polybar main &

echo "Polybar launched..."
