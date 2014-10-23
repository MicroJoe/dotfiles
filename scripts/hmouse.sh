#!/bin/sh

lockfile=~/.mouselock
screen=(1024 600)

# if first start, we consider mouse is activated and save it
if [[ ! -f $lockfile ]]; then
    echo 0 > $lockfile
fi

# retrieve current state
mouselock=$(cat $lockfile)

# functions
function show() {
    synclient TouchpadOff=0
    xdotool mousemove $((${screen[0]} / 2)) $((${screen[1]} / 2))
    echo 0 > $lockfile
}

function hide() {
    synclient TouchpadOff=1
    xdotool mousemove ${screen[0]} ${screen[1]}
    echo 1 > $lockfile
}

# handle arguments
case "$1" in
    show)
        show
        ;;
    hide)
        hide
        ;;
    toggle)
        if [[ $mouselock -eq 1 ]]; then
            show
        else
            hide
        fi
        ;;
    restore)
        if [[ $mouselock -eq 1 ]]; then
            hide
        else
            show
        fi
        ;;
    *)
        echo "usage: hmouse show|hide|toggle|restore"
        ;;
esac
