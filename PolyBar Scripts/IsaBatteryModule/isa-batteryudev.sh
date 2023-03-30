#!/bin/sh

battery_print() {
    PATH_AC="/sys/class/power_supply/macsmc-ac"
    PATH_BATTERY_0="/sys/class/power_supply/macsmc-battery"
    PATH_BATTERY_1="/sys/class/power_supply/macsmc-battery"

    ac=$(cat /sys/class/power_supply/macsmc-ac/online)
    battery_level_0=$(cat "/sys/class/power_supply/macsmc-battery/capacity")
    battery_level_1=0
    battery_max_0=100
    battery_max_1=100
    charging_status=$(cat "/sys/class/power_supply/macsmc-battery/capacity")

    if [ -f "$PATH_AC/online" ]; then
        ac=$(cat "$PATH_AC/online")
    fi

    if [ -f "$PATH_BATTERY_0/energy_now" ]; then
        battery_level_0=$(cat "$PATH_BATTERY_0/energy_now")
    fi

    if [ -f "$PATH_BATTERY_0/energy_full" ]; then
        battery_max_0=$(cat "$PATH_BATTERY_0/energy_full")
    fi
    battery_level=$(("$battery_level_0"))
    battery_max=$(("$battery_max_0"))

    if [ $ac == 1 ]
    then 
        echo "Charging $battery_level_0% "
    else
        echo "$battery_level_0% "
    fi
sleep 5
battery_print
}

path_pid="/tmp/polybar-battery-combined-udev.pid"

case "$1" in
    --update)
        pid=$(cat $path_pid)

        if [ "$pid" != "" ]; then
            kill -10 "$pid"
        fi
        ;;
    *)
        echo $$ > $path_pid

        trap exit INT
        trap "echo" USR1

        while true; do
            battery_print

            sleep 30 &
            wait
        done
        ;;
esac

