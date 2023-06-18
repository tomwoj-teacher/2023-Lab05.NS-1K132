#!/bin/bash
# Kacper Kaleta - monitor system resources

TOTAL=$(free -m | cut -c 17-20 | head -n -1 | tail -n -1)

while true
do
	tput clear
	echo "%Cpu:" $(top -b -n 1 | grep Cpu | cut -c 11-13)"%"
	USED=$(free -m | cut -c 29-32 | head -n 2 | tail -n 1)
	echo "%Mem:" $(((USED*100)/TOTAL))"%"
	echo "%Disk:" $(df --total | tail -n 1 | cut -c 46-47)"%"
	sleep 1
done
