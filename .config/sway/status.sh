# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

audio_volume=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master) )

if [[ $audio_volume == "0%" ]]; then
	audio_icon=🔇
else 
	audio_icon=🔉
fi

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %H:%M")

# Returns the battery status: "Full", "Discharging", or "Charging".
battery_status=$(upower --show-info $(upower --enumerate |\
grep 'BAT') |\
egrep "state|percentage" |\
awk '{print $2}')

kb_layout=$(swaymsg -t get_inputs \
	| jq 'map(select(has("xkb_active_layout_name")))[0].xkb_active_layout_name')

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo $kb_layout $kb_variant $audio_icon $audio_volume 🔋 $battery_status ⌚$date_formatted
