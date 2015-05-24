#!/bin/sh

usage() {
	echo "usage: config.sh <config_file>"
}

replace() {
	files=$(find . -name '*.m4')

	for f in $files; do
		dir=$(dirname $f)

		# Do not compile root config m4 files but files in subdirectories
		if [ "$dir" != '.' ]; then
			filename=$(basename $f .m4)
			output="$dir/$filename.out"

			echo "$f -> $output"
			m4 $1 $f > $output
		fi
	done
}

if [ "$#" -eq 0 ]; then
	usage
	exit 1
fi

if [ -f $1 ]; then
	replace $1
else
	echo "Configuration file \"$1\" not found."
	exit 2
fi
