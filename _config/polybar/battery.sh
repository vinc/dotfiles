#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: battery <id>"
  exit 1
fi

status=$(cat /sys/class/power_supply/$1/status)
capacity=$(cat /sys/class/power_supply/$1/capacity)
icon=$([ "$status" == "Charging" ] && echo "" || echo "")

if [ "$capacity" -lt 10 ]; then
  echo %{F#FB4934}$capacity%%{F-}
else
  echo $icon$capacity%
fi
