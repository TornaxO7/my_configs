#!/bin/bash
slideshow=false

# remove the old side-show if it exists
if [[ '$(expr length "$(pgrep watch)"' != 0 ]]; then
	killall watch
	notify-send -t 1000 "Main-slideshow" "killed"
fi

# looks after the arguments
# -s 	for side-show-mode
# -t    for which type (if you have multiple folders)
while getopts "st:" opt
do
   case "$opt" in
      d ) slideshow=true ;;
      a ) typeImage="$OPTARG" ;;
   esac
done

# should it do a side-show?
if $slideshow; then
	
	case $typeImage in
		"all")
			# show all images
		       	watch -n 60 feh --recursive --randomize --bg-fill /images/* &
			notify-send -t 2000 "Background" "Slideshow: All images c(^-^)c"
			;;
	
		"ditfxx") 
			# show images of "darling in the franxx"
			watch -n 60 feh --recursive --randomize --bg-fill /images/DarlingInTheFranxx/* &
			notify-send -t 2000 "Background" "Slideshow: Darling in the Franxx"
			
			;;
	
		"arch") 
			# show images of Arch Linux
			watch -n 60 feh --recursive --randomize --bg-fill /images/arch_linux/* &
			notify-send -t 2000 "Background" "Slideshow: Arch Linux"
			;;

		"FT")
			# show images of Fairy Tail
			watch -n 60 feh --recursive --randomize --bg-fill /images/fairy_tail/* &
			notify-send -t 2000 "Background" "Slideshow: Fairy Tail"
			;;
	esac

# don't use a slide-show 
else
	case $typeImage in
		"all")
			# iterate through all images until you find yours :)
		       	feh --recursive --randomize --bg-fill /images/* &
			notify-send -t 2000 "Background" "Only: All images c(^-^)c"
			;;

		"night") 
			# use images which doesn't hurt you eyes
			# Hint: Just add a second path if you have multiple screens
			feh --bg-fill /path/ /pathNumber2
			notify-send -t 2000 "Background" "Only: Arch and Wendy."
			;;
	
		"ditfxx") 
			# iterates through my ditfxx folder
			feh --recursive --randomize --bg-fill /images/DarlingInTheFranxx/*
			notify-send -t 2000 "Background" "Only: Darling in the Franxx."
			;;
	
		"arch") 
			# iterates though my arch linux folder
			feh --recursive --randomize --bg-fill /images/arch_linux/*
			notify-send -t 2000 "Background" "Only:: Arch Linux :D"
			;;
	esac
fi
