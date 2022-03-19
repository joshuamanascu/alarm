#!/bin/bash

if [[ $1 == "-t" ]]
then
	H=$2
	M=$3

	echo "Alarm set for $H:$M at `date +%H:%M`"
	while true
	do
		if [[ $H == `date "+%H"` && $M == `date "+%M"` ]]
		then
			echo "Press q to quit"
			mpg123 --loop -1 -q $HOME/alarm.mp3
			exit 0
		fi
	done
elif [[ $1 == "-h" ]]
then
	echo -e "FORMAT: alarm [minutes] \nFORMAT: alarm -t HH MM"
else
	echo "Alarm set for $1 minutes at `date +%H:%M`"
	sleep $1m
	echo "Press q to quit"
	mpg123 --loop -1 -q  $HOME/alarm.mp3
	exit 0
fi
