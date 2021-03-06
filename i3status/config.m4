# i3status configuration file.
# see "man i3status" for documentation.

# It is important that this file is edited as UTF-8.
# The following line should contain a sharp s:
# ß
# If the above line is not correctly displayed, fix your editor first!

general {
    colors = true
    interval = 2

    color_good = "COLOR_GREEN"
    color_degraded = "COLOR_YELLOW"
    color_bad = "COLOR_RED"
}

ifdef(`USE_WLAN',`dnl
order += "wireless WLAN_IFACE"
',)dnl
ifdef(`USE_LAN',`dnl
order += "ethernet LAN_IFACE"
',)dnl
order += "cpu_usage"
ifdef(`USE_CPU_TEMP',`dnl
order += "cpu_temperature 0"
',)dnl
order += "disk /"
order += "volume master"
ifdef(`USE_BATTERY',`dnl
order += "battery USE_BATTERY"
',)dnl
order += "tztime local"

cpu_usage {
    format = ifdef(`USE_UNICODE', " ☢ %usage ", " cpu %usage ")
}

cpu_temperature 0 {
    format = ifdef(`USE_UNICODE', " 🌡 %degrees °C ", " %degrees °C ")
}

disk / {
    format = ifdef(`USE_UNICODE', " 💾 %used ", " / %used ")
}

volume master {
    format = ifdef(`USE_UNICODE', " 🔊 %volume ", " vol %volume ")
    format_muted = ifdef(`USE_UNICODE', " 🔇 muted ", " muted ")
    device = "default"
    mixer = "Master"
    mixer_idx = 0
}

tztime local {
    format = ifdef(`USE_UNICODE', " 🕓 %H:%M ", " %H:%M ")
}

ifdef(`USE_LAN',`dnl
ethernet LAN_IFACE {
    format_up = ifdef(`USE_UNICODE', " 🔗 %ip ", " eth %ip ")
    format_down = ifdef(`USE_UNICODE', " 🔗 ", " eth down ")
}
',)dnl

ifdef(`USE_WLAN',`dnl
wireless WLAN_IFACE {
    format_up = ifdef(`USE_UNICODE', " 📶 %quality %essid %ip", " wlan %quality %essid %ip")
    format_down = ifdef(`USE_UNICODE', " 📶 ", " wlan down")
}
',)dnl

ifdef(`USE_BATTERY',`dnl
battery USE_BATTERY {
    format = ifdef(`USE_UNICODE', " 🔋 %status %percentage ", " %status %percentage ")
    format_down = " no bat "
    low_threshold = 10
}
',)dnl
