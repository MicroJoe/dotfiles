#!/bin/sh

if [ ! -f /bin/dash ]; then
	echo "You must install dash first!"
	exit 1
fi

if [ $(whoami) != root ]; then
	echo "You must run this script as root"
	exit 2
fi

# Replace bash symlink by dash
ln -sfT dash /bin/sh

echo "Bash was successfully replaced by dash on /bin/sh"

# Noupgrade instructions

echo
echo "Now, in order to avoid updates on this symlink, please add the" \
	"following two lines in your /etc/pacman.conf at the right place" \
	"before any repositories"
echo

echo "NoUpgrade = usr/bin/sh"
echo "NoExtract = usr/bin/sh"

