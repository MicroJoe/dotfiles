#!/bin/bash

function usage()
{
    echo "usage: config.sh <config_file>"
}

function replace()
{
    files=$(find . -name "*.in")

    for f in $files; do
        dir=$(dirname $f)
        filename=$(basename $f .in)

        output="$dir/$filename.out"

        echo "$f -> $output"
        m4 $1 $f > $output
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
