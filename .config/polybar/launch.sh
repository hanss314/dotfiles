#!/usr/bin/env sh
killall -q polybar
# Launch bar1 and bar2
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    echo $m
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi


echo "Bars launched..."
