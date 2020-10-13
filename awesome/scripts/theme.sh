#!/bin/bash

theme_dir=~/.config/awesome/themes
awesome_dir=~/.config/awesome

# Awesomewm will always take the theme in "~/.config/awesome/theme.lua" so it just copy the theme file in the "themes" folder to this file :)
case "$1" in
	"tokyo_ghoul")
		cp $theme_dir/tokyo_ghoul.lua $awesome_dir/theme.lua;;

	"miku")
		cp $theme_dir/miku.lua $awesome_dir/theme.lua;;

	*)
		cp $theme_dir/default.lua $awesome_dir/theme.lua;;
esac

# Restart awesomewm
echo 'awesome.restart()' | awesome-client
