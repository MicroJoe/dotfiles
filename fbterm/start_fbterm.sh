#!/bin/bash

background=$HOME/img/wallpapers/wallpaper.jpg

echo -ne "\e[?25l"
fbv -ciuker "$background" << EOF
q
EOF
shift
export FBTERM_BACKGROUND_IMAGE=1
exec fbterm "$@"
