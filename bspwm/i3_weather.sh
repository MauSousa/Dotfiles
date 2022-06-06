#!/usr/bin/env bash

weather=$(curl -s wttr.in/Mexico_City?format=3)
if [ $(echo "$weather" | grep -E "(Unkwown|curl|HTML)" | wc -l) -gt 0 ]; then
	echo "Weather unavailable"
else
	echo "$weather" | awk '{print " "$3}'
fi
