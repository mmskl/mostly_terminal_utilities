#!/bin/bash

status="$(nmcli radio wifi)"
msg=""
flag="low"




if [ "$status" == 'disabled' ]; then
    nmcli radio wifi on
    msg="Wi-fi turned ON"
    flag="normal"

else
    nmcli radio wifi off
    msg="Wi-fi turned OFF"
    flag="critical"
fi

notify-send -u "$flag" "$msg" --expire-time 6000
