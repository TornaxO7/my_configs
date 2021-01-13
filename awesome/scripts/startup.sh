#!/usr/bin/env bash

function run {
	
	if ! pgrep -f $1; then
		$@&
	fi
}

run redshift
run picom
run discord
run rambox
run nextcloud
run flameshot
