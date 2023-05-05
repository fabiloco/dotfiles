if ! pgrep -f /usr/bin/easyeffects; then
    exec /usr/bin/easyeffects --gapplication-service &
    notify-send 'easyeffects daemon started'
else
    /usr/bin/easyeffects
fi
