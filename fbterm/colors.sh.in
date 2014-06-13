#!/bin/bash

function generate_escape {
  # Print the escape character
  printf "\e[3;%d;%d;%d;%d}" \
      $1 \
      "0x${2:1:2}" \
      "0x${2:3:2}" \
      "0x${2:5:2}"
}

generate_escape 0 'COLOR_BLACK'
generate_escape 8 'COLOR_BLACK_LIGHT'

generate_escape 1 'COLOR_RED'
generate_escape 9 'COLOR_RED_LIGHT'

generate_escape 2 'COLOR_GREEN'
generate_escape 10 'COLOR_GREEN_LIGHT'

generate_escape 3 'COLOR_YELLOW'
generate_escape 11 'COLOR_YELLOW_LIGHT'

generate_escape 4 'COLOR_BLUE'
generate_escape 12 'COLOR_BLUE_LIGHT'

generate_escape 5 'COLOR_MAGENTA'
generate_escape 13 'COLOR_MAGENTA_LIGHT'

generate_escape 6 'COLOR_CYAN'
generate_escape 14 'COLOR_CYAN_LIGHT'

generate_escape 7 'COLOR_WHITE'
generate_escape 15 'COLOR_WHITE_LIGHT'
