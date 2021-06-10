#!/bin/sh

while :
do
	sig=$(awk 'END{print$4}' /proc/net/wireless | sed 's/^/ /;s/\./ dBm/')
	mem=$(free -t | grep "Mem" | awk '{ printf("%.2f%\n"), $3/$2 * 100}')
	cpu=$($HOME/git/dots/dwm/dwmstatus/cpu.o)
#	bat=$($HOME/git/dots/battery.o)
#	dwm -s "$(dwmstatus | sed "s/|/\[${sig}\]\[ ${cpu}\]\[ ${mem}\]\[${bat}\]/")"
	dwm -s "$(dwmstatus | sed "s/|/\[${sig}\]\[ ${cpu}\]\[ ${mem}\]/")"
done

