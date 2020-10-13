#!/bin/bash

# looks if a song is playing
if [[ $(playerctl -p sayonara status 2>&1) != 'No players found' ]]; then
		echo $(playerctl metadata --player=sayonara --format '{{ duration(position) }} | {{ duration(mpris:length) }} <==> {{title}}')

	elif [[ $(playerctl --player=spotify,%any status 2>&1) != 'No players found' ]]; then
		echo $(playerctl metadata --player=spotify,%any --format '{{title}}')

	else
		echo "Music please!"
fi
