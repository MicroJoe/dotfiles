#!/bin/dash

# This script allow users to modify brightness directly by writting into the
# driver file.
#
# Be sure to allow the tee command to run as root without password on the
# designated BRPATH file elsewise you will have to type your password each time
# you want to change the brightness of the screen.
#
# Example line to add the to /etc/sudoers file:
#
#     microjoe ALL=(root) NOPASSWD: /usr/bin/tee /sys/class/[...]/brightness
#
# Be sure to replace the path by the one defined right under this comment.

# Path to the brightness driver file
BRPATH=/sys/class/backlight/radeon_bl0/brightness

# Constants
MAX=255
MIN=1
STEP=25

# Change the brightness value
chbr () {
	echo $1 | sudo /usr/bin/tee $BRPATH
}

# Increase brightness by $STEP until $MAX is reached
inc () {
	val=$(cat $BRPATH)
	if [ $val -lt $(($MAX - $STEP)) ]; then
		newval=$(($val + $STEP))
		chbr $newval
	else
		chbr $MAX
	fi
}

# Decrease brightness by $STEP until $MIN is reached
dec () {
	val=$(cat $BRPATH)
	if [ $val -gt $(($MIN + $STEP)) ]; then
		newval=$(($val - $STEP))
		chbr $newval
	else
		chbr $MIN
	fi
}

# Select which function to call
case $1 in
	inc)
		inc;;
	dec)
		dec;;
esac
