#!/bin/bash

# Print the color set of the terminal, as well as some other formatting
# escape codes.
#
# ESCAPE CODE SYNTAX:
#     \e[xxmTEXT TO ALTER
#   Starts with \e[ (or \033[ or \x1B[), then the code (xx), then the m letter.
#   Multiple codes can be passed separated by a semicolon (;).
#
# ESCAPE CODES:
#   colours:
#     0..7 = the 8 basic colours,
#     8;5;{0..255} = the 256-colours palette (not shown by this script),
#     9 = default color;
#    * for background: prefix with 3;
#    * for foreground: prefix with 4;
#   effects (prefix with 2 to cancel):
#     1 = bold/emphasis (increased intensity),
#     2 = faint (decreased intensity),
#     3 = italic,
#     4 = undelined,
#     5 = slow blink,
#     6 = fast blink,
#     7 = reversed (inverse foreground and background colors),
#     8 = hidden,
#     9 = striked;
#   0 cancels everything.

echo -e '0:\e[00mnormal\e[00m      1:\e[01mbold/emphasis\e[21m  2:\e[02mfaint\e[22m  3:\e[03mitalic\e[23m'
echo -e '4:\e[04munderlined\e[24m  blink 5:\e[05mslow\e[25m     6:\e[06mfast\e[26m   7:\e[07mreversed\e[27m'
echo -e '8:\e[08mhidden\e[28m      9:\e[09mstriked\e[29m'
echo -e '10:\e[10mfirst font\e[10m 11:\e[11malt font 1\e[10m    12:\e[12malt font 2\e[0m'
echo -e '51:\e[51mframed\e[54m     52:\e[52mencirled\e[54m      53:\e[53moverlined\e[55m'

colors=(' black ' '  red  ' ' green ' 'yellow '
        ' blue  ' 'magenta' ' cyan  ' ' white '
		'256col ' 'default')

echo -ne "\n      "
for j in 9 {0..7}; do
	#echo -n  "  ${shortcolors[j]}   "
	echo -n  "${colors[j]} "
done
echo -ne "\n      "
for j in 9 {0..7}; do
	echo -ne "    4$j  "
done
echo

for i in 9 {0..7}; do
	for k in '0;' '1;'; do
		echo -ne " ${k}3${i} \e[${k}3${i}m"
		for j in 9 {0..7}; do
			echo -ne "\e[4${j}m  Kaï  \e[49m "
		done
		echo -e "\e[0m"
	done
done

