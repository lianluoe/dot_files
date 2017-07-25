#!/bin/bash
while  [ true ]; do
  sleep 50
  value=`cat /sys/class/power_supply/BAT0/capacity`
  if  [ "$value" -le "20" ]
  then
    status=`cat /sys/class/power_supply/BAT0/status`
    if  [ "$status" == "Discharging" ]
    then
      paplay ~/bin/sound/distant-nuke-explosion.ogg
      notify-send "Low on battery"
    fi
  fi
done
