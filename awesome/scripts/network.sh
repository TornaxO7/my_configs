#!/bin/bash

# Return the download rate
if [[ $1 == 'download' ]]; then
	first_value="$(cat /proc/net/dev | grep 'eno1' | awk '{printf("%lu"), $2}')"
	sleep 1
	second_value="$(cat /proc/net/dev | grep 'eno1' | awk '{printf("%lu"), $2}')"
	
	echo "$((second_value - first_value))"

# Return the upload rate
elif [[ $1 == 'upload' ]] ; then
	first_value="$(cat /proc/net/dev | grep 'eno1' | awk '{printf("%lu"), $10}')"
	sleep 1
	second_value="$(cat /proc/net/dev | grep 'eno1' | awk '{printf("%lu"), $10}')"
	
	echo "$((second_value - first_value))"
fi
