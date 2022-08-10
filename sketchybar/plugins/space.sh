#!/bin/sh

# IMPORTS
source "${HOME}/.config/wal/argb.sh"

if [[ ${SELECTED} == "true" ]]; then
  sketchybar --animate sin 15 --set ${NAME} icon.highlight=${SELECTED} background.color=${color6}
else
  sketchybar --animate linear 10 --set ${NAME} icon.highlight=${SELECTED} background.color=${SELECTED}
fi

#sketchybar --animate sin 30 --set ${NAME} label=${NAME} icon.highlight=${SELECTED} label.highlight=${SELECTED} background.color=${SELECTED}

#label=${NAME} 

#label.highlight=${SELECTED} icon.highlight=${SELECTED}
#background.drawing=$SELECTED
#--animate sin 15 
#--animate linear 10 
