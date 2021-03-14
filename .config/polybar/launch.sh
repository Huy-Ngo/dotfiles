# Launch
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar eDP1 &

# Dual monitor bar

external_monitor=$(xrandr --query | grep 'HDMI-1')
if [[ $external_monitor = *connected* ]]; then
        polybar HDMI1 &
fi
