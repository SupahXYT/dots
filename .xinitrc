unclutter -idle 3 &
# Unfortunatly my status bar isn't pure C anymore. Currently learning C to fix that.
# I'll make a another repo when I'm done, but it's only gonna print to stout so there will always be some shell necessary
status.sh &
hsetroot -fill $HOME/git/dots/doge.jpg
# sudo su -c "echo 0 > /sys/class/backlight/intel_backlight/brightness"
picom --config $HOME/.config/picom/picom.conf &
sxhkd &
exec dwm > ~/.dwm.log

