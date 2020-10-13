#!/bin/bash

# Return the max amount of ram
if [[ $1 == 'free' ]]; then
	echo "$(df -B G | grep "/dev/mapper/arch-lv_arch" | awk '{printf("%d"), $4}')"

# Return the current usage
elif [[ $1 == 'used' ]] ; then
	echo "$(df -B G | grep "/dev/mapper/arch-lv_arch" | awk '{printf("%d"), $3}')"
fi
