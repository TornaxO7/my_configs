----- Awesome Library -----
local awful = require("awful")
---------------------------

local DP = "DP-0"
local HDMI = "HDMI-0"

-- Terminal
awful.tag.add("1",
	{
		icon 			= awesome_dir .. "/favicons/terminal.ico",
		layout 			= awful.layout.suit.max,
        --layout 			= awful.layout.suit.floating,
		gap 			= gap_size,
		screen 			= DP,
		selected 		= true,
	}
)

-- Browsers
awful.tag.add("2",
	{
		icon 			= awesome_dir .. "/favicons/firefox.ico",
		layout 			= awful.layout.suit.max,
		gap 			= gap_size,
		screen 			= HDMI,
		selected 		= true,
	}
)

-- Programming
awful.tag.add("3",
	{
		icon 			= awesome_dir .. "/favicons/code.ico",
		layout 			= awful.layout.suit.max,
		gap 			= gap_size,
		screen 			= DP
	}
)

-- Filemanager
awful.tag.add("4",
	{
		icon 			= awesome_dir .. "/favicons/folder.ico",
		layout 			= awful.layout.suit.max,
		gap 			= gap_size,
		screen 			= HDMI
	}
)

-- Social
awful.tag.add("5",
	{
		icon 			= awesome_dir .. "/favicons/social.ico",
		layout 			= awful.layout.suit.max,
		gap 			= gap_size,
		screen 			= HDMI
	}
)

-- Microsoft Teams
awful.tag.add("6",
	{
		icon 			= awesome_dir .. "/favicons/windows.ico",
		layout 			= awful.layout.suit.max,
		gap 			= gap_size,
		screen 			= DP
	}
)

-- Music
awful.tag.add("7",
	{
		icon 			= awesome_dir .. "/favicons/music.ico",
		layout 			= awful.layout.suit.max,
		gap 			= gap_size,
		screen 			= HDMI
	}
)

-- Texstudio
awful.tag.add("8",
	{
		icon 				= awesome_dir .. "/favicons/pen.ico",
		layout 				= awful.layout.suit.tile.left,
		master_width_factor = 0.6,
		gap 				= gap_size,
		screen 				= DP
	}
)

-- Printer and Scanner
awful.tag.add("9",
	{
		icon 			= awesome_dir .. "/favicons/printer.ico",
		layout 			= awful.layout.suit.fair,
		gap 			= gap_size,
		screen 			= HDMI
	}
)

-- Virtualbox
awful.tag.add("10",
	{
		icon 			= awesome_dir .. "/favicons/virtualbox.ico",
		layout 			= awful.layout.suit.max,
		gap 			= gap_size,
		screen 			= DP
	}
)
