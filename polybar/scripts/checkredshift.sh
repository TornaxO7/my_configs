#!/bin/bash
temp=$(redshift -p -l 41:-75 | grep temperature | cut -c 20-30)
result=$(ps -C redshift | grep -o redshift)

if [ "$result" == "redshift" ]; then
	echo $temp
else
	echo Redshift Off
fi
