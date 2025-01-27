#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
## Autostart Programs

# Kill already running process
_ps=(picom dunst ksuperkey mpd xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done
killall xborders
# Fix cursor
xsetroot -cursor_name left_ptr


# Enable Super Keys For Menu
# ksuperkey -e 'Super_L=Alt_L|F1' &
# ksuperkey -e 'Super_R=Alt_L|F1' &

# Restore wallpaper
#hsetroot -root -cover ~/.config/i3/wallpapers/default.png
#python3 ~/projects/schedule-widget/todo-widget/todo.py
nitrogen --restore &
# Lauch notification daemon2
~/.config/i3/bin/i3dunst.sh

# Lauch polybar
#~/.config/i3/bin/ewwbar.sh
#
~/.config/i3/bin/i3bar.sh &

# Lauch compositor
~/.config/i3/bin/i3comp.sh &

pulseaudio --start

~/.config/i3/bin/pollbattery &
# Start xborders

#xborders --disable-version-warning -c ~/.config/xborders/config.json &
#xidlehook --not-when-audio --not-when-fullscreen --detect-sleep --timer 300 lock '' &

~/.config/i3/bin/alternating_layouts.py &
xinput set-prop 9 337 0
fcitx5&

