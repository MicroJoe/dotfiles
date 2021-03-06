! .Xresources file

! Font
URxvt*font: xft:Inconsolata Medium:size=9
URxvt*boldFont: xft:Inconsolata Medium:size=9

! Look
URxvt*scrollBar: false
URxvt*transparent: true
ifdef(`URXVT_SHADING',`dnl
URxvt*shading: URXVT_SHADING
',)dnl
URxvt*visualBell: true

! URLs handling
URxvt.perl-ext-common: default,matcher
URxvt.url-launcher: /usr/bin/firefox
URxvt.matcher.button: 1

! Colors
*background: COLOR_BACKGROUND
*foreground: COLOR_WHITE_LIGHT
! black
*color0: COLOR_BLACK
*color8: COLOR_BLACK_LIGHT
! red
*color1: COLOR_RED
*color9: COLOR_RED_LIGHT
! green
*color2: COLOR_GREEN
*color10: COLOR_GREEN_LIGHT
! yellow
*color3: COLOR_YELLOW
*color11: COLOR_YELLOW_LIGHT
! blue
*color4: COLOR_BLUE
*color12: COLOR_BLUE_LIGHT
! magenta
*color5: COLOR_MAGENTA
*color13: COLOR_MAGENTA_LIGHT
! cyan
*color6: COLOR_CYAN
*color14: COLOR_CYAN_LIGHT
! white
*color7: COLOR_WHITE
*color15: COLOR_WHITE_LIGHT
