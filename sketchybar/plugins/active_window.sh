#!/bin/zsh

# window title
#data=$(yabai -m query --windows --window)
app="${INFO:l}"
sketchybar --set $NAME label="${app}"
