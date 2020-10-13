#!/usr/bin/env bash

function run {
	
	if ! pgrep -f $1; then
		$@&
	fi
}

run redshift
run picom
run discord
run ~/Apps/Rambox.AppImage
run ~/Apps/Nextcloud-3.0.2-x86_64.AppImage
