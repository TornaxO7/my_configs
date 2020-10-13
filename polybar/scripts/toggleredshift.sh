#!/bin/bash
result=$(ps -C redshift | grep -o redshift)

if [ "$result" == "redshift" ]; then
	redshift -x && killall redshift && notify-send "Deactivated redshift" -t 2000 
else
	redshift -r -l 40.712728\:-74.006015 &
	notify-send "Activated redshift" -t 2000
fi
