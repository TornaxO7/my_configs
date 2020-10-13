#!/bin/bash

# Return the max amount of ram
if [[ $1 == 'max' ]]; then
	echo "$(free --si -h | grep "Mem:" | awk '{printf("%.2f"), $2}')"

# Return the current usage
elif [[ $1 == 'usage' ]] ; then
	echo $(free --si -m | grep "Mem:" | awk '{printf("%lu"), $3}')

# Return the current swap usage
elif [[ $1 == 'swap' ]]; then
	echo $(free --si -m | grep "Swap:" | awk '{printf("%lu"), $3}')
fi
