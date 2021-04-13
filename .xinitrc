unclutter -idle 3 &
statusdwm &
hsetroot -fill ~/git/dots/doge.jpg
picom &
# sudo su -c "echo 0 > /sys/class/backlight/intel_backlight/brightness"
exec dwm > ~/.dwm.log

