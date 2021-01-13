------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local watch = require("awful.widget.watch")
local beautiful = require("beautiful")
local gears = require("gears")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-----------------------------

local textclock = wibox.widget {
	format = "%H:%M",
	timezone = "America/New_York",
	refresh = 60,
	opacity = 1,
	visible = true,

	align = "center",
	valign = "center",
	font = "Liberation 14",

	widget = wibox.widget.textclock
}

return textclock
