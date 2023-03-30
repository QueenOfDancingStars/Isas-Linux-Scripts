#!/bin/sh

network_print() {
    while [ 1=1 ]
    do
        counter=0
        status=""
        state=$(nmcli -p -f general device show wlan0 | grep GENERAL.STATE | grep -oP "\(\K[^\)]+")
        if [ "$state" = "connected" ]; then
            status="Wi-Fi :3"
        elif [ "$state" = "activating" ]; then
            status="Wi-Fi: …"
        elif [ "$state" = "deactivating" ]; then
            status="Wi-Fi: ✕"
        elif [ "$state" = "disconnected" ]; then
            status="Wi-Fi TwT"
        else
            status="Error"
        fi
        echo "$status" 
        sleep 5
    done
}
network_print
