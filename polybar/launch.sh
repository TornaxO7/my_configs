killall polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# generate the bars
polybar -c ~/.config/polybar/pc_bar dpBar &
polybar -c ~/.config/polybar/pc_bar hdmiBar &
