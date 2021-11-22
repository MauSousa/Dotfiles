#!/bin/sh
# i3block for displaying the current temperature, humidity and precipitation, if wttr.in i unavailable then WEATHER UNAVAILABLE will be displayed

weather=$(curl -s wttr.in/Mexico_City?format=3)

if [ $(echo "$weather" | grep -E "(Unknown|curl|HTML)" | wc -l) -gt 0 ]; then
    echo "WEATHER UNAVAILABLE"
else
    echo "$weather" | awk '{print " "$3}'
fi
