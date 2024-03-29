#!/usr/bin/env bash

DIR="$HOME/.config/polybar/custom"

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q main -c "$DIR"/config.ini &
polybar -q secondary -c "$DIR"/config.ini &
