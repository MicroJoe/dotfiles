# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout somewhen, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod MOD_KEY
set $font xft:UI_FONT UI_FONT_SIZE
set $TERMINAL termite

# The pop sound played on lower volume and raise volume. If the file is not
# found, then it will just process the volume without playing any sound.
set $popsound ~/.pop.wav

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below. ISO 10646 = Unicode
font $font
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, if you need a lot of unicode glyphs or
# right-to-left text rendering, you should instead use pango for rendering and
# chose a FreeType font, such as:
# font pango:DejaVu Sans Mono 10

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $mod+q kill


# start dmenu (a program launcher)
bindsym $mod+d exec --no-startup-id dmenu_run -fn 'UI_FONT-UI_FONT_SIZE'
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# alternatively, you can use the cursor keys:
# bindsym $mod+Left focus left
# bindsym $mod+Down focus down
# bindsym $mod+Up focus up
# bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# alternatively, you can use the cursor keys:
# bindsym $mod+Shift+Left move left
# bindsym $mod+Shift+Down move down
# bindsym $mod+Shift+Up move up
# bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+g split h

# split in vertical orientation
bindsym $mod+m split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+t layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+u focus parent

# focus the child container
bindsym $mod+c focus child

# switch to workspace, AZERTY layout
bindsym $mod+ampersand workspace number 1
bindsym $mod+eacute workspace number 2
bindsym $mod+quotedbl workspace 3
bindsym $mod+apostrophe workspace 4
bindsym $mod+parenleft workspace 5
bindsym $mod+minus workspace 6
bindsym $mod+egrave workspace 7
bindsym $mod+underscore workspace 8
bindsym $mod+ccedilla workspace 9
bindsym $mod+agrave workspace 10

# move focused container to workspace, AZERTY layout
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+eacute move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+egrave move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+ccedilla move container to workspace 9
bindsym $mod+Shift+agrave move container to workspace 10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+q exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# lock screen and suspend dunst during this period in order to avoid displaying of notifications above lockscreen
# bindsym $mod+x exec "killall -SIGUSR1 dunst && i3lock -ui ~/img/wallpapers/bluescreen.png --nofork && killall -SIGUSR2 dunst"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym h resize shrink width 10 px or 10 ppt
        bindsym j resize grow height 10 px or 10 ppt
        bindsym k resize shrink height 10 px or 10 ppt
        bindsym l resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
    status_command i3status
    colors {
        background #101010
        statusline #C5C8C6

        focused_workspace #C5C8C6 #0C73C2 #C5C8C6
        inactive_workspace #707880 #1D1F21 #707880
    }
}


# Appearance
#new_window 1pixel

# Media keys
bindsym XF86AudioPrev exec mpc prev
bindsym XF86AudioNext exec mpc next
bindsym XF86AudioPlay exec mpc toggle

bindsym XF86AudioMute exec amixer -q set Master toggle
bindsym XF86AudioLowerVolume exec "aplay $popsound ; amixer -q set Master 2%- unmute"
bindsym XF86AudioRaiseVolume exec "aplay $popsound ; amixer -q set Master 2%+ unmute"

bindsym XF86Sleep exec "systemctl suspend"

ifdef(`CUSTOM_BRIGHTNESS',`dnl
bindsym XF86MonBrightnessUp   exec "~/.scripts/brightness.sh inc"
bindsym XF86MonBrightnessDown exec "~/.scripts/brightness.sh dec"
',)dnl

# Dynamic tags
bindsym $mod+w exec i3-dtags.sh -fn 'UI_FONT-UI_FONT_SIZE'
bindsym $mod+Shift+w exec i3-dtags-moveto.sh -fn 'UI_FONT-UI_FONT_SIZE'
bindsym $mod+x exec i3-input -F 'rename workspace to %s' -P 'New name: ' -f '$font'

# Scratchpad
bindsym $mod+colon move scratchpad
bindsym $mod+exclam scratchpad show

bindsym $mod+a exec ~/bin/hmouse.sh toggle

# Lock with customization
bindsym $mod+Right exec i3lock -i ~/.wall.png -d -I 5 -e

# Custom window rules

# Floating windows
for_window [title="Preferences$"] floating enable
for_window [class="(?i)mplayer"] floating enable

# Borderless windows for fullscreen apps
for_window [class="Firefox" instance="Navigator"] border 1pixel
for_window [class="libreoffice"] border 1pixel
for_window [class="Eclipse"] border 1pixel
