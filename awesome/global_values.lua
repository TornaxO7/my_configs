------ Awesome library ------
local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-----------------------------

-- Terminal --
terminal = "alacritty"

-- Browsers
firefox = "firefox"
chromium = "chromium"

-- Sozial programs
discord = "Discord"

-- Vim / Editor --
editor = "vim"
editor_cmd = terminal .. " -e " .. editor

-- modkeys
modkey = "Mod1" 	-- Alt-Key
modkey2 = "Mod4" 	-- Win-Key

-- favicons-directory
awesome_dir = "/home/tornax/.config/awesome"

-- Gaps for each tag
gap_size = 5

----- Popup Values ----
popup_values = {

	spacing = dpi(10),

	icons = {
		height = dpi(36),
		width = dpi(36)
	},

	bars = {
		height = dpi(30),

		margins = {
			top = dpi(7),
			bottom = dpi(7),
			right = dpi(8),
			left = dpi(8)
		}
	},

	graphs = {
		height = dpi(30),
		width = dpi(275),

		step_width = dpi(5),
		step_spacing = dpi(0),

		margins = {
			top = dpi(7),
			bottom = dpi(7),
			right = dpi(10),
			left = dpi(10)
		},
	},

	radialprogressbar = {
		width = dpi(127),
		height = dpi(100)
	},

	cpu = {
		bar_width = dpi(300),
		bar_height = dpi(30)
	},

	piechar = {
		width = dpi(150),
		height = dpi(100)
	}
}
