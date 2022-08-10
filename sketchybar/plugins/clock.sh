#!/bin/sh

sketchybar --set $NAME label="$(date '+%H:%M')" 2>/dev/null & disown

