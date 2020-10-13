#!/bin/bash

case "$1" in
	1) # Return music title
		if [[ $(playerctl --player=sayonara,spotify status 2>&1) != 'No players found' ]]; then
				echo $(playerctl metadata --player=%any --format '{{title}}')
		else
			echo "Music please!"
		fi
		;;
	2) # Return total duration of the song
		if [[ $(playerctl --player=sayonara status 2>&1) != 'No players found' ]]; then
			echo $(playerctl metadata --player=%any --format '{{duration(mpris:length)}}')
		else
			echo "0"
		fi
		;;
	3) # Return the current duration of the song
		if [[ $(playerctl --player=sayonara status 2>&1) != 'No players found' ]]; then
			echo $(playerctl metadata --player=%any --format '{{duration(position)}}')
		else
			echo "0"
		fi
		;;
esac

