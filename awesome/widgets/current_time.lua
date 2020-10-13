------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local watch = require("awful.widget.watch")
local gears = require("gears")
local beautiful = require("beautiful")
-----------------------------

local current_time = wibox.widget(
	{
		format = "%H:%M",
		timezone = "America/New_York",
		refresh = 60,
		opacity = 1,
		visible = true,

		align = "center",
		valign = "center",
		font = "Liberation Sans 55",


		widget = wibox.widget.textclock
	}
)

current_time.markup = "<span foreground='" .. beautiful.popup.clock.hour .. "'>" .. current_time.text:sub(1,2) .. "</span>" .. current_time.text:sub(3,3) .. "<span foreground='" .. beautiful.popup.clock.minute .. "'>" .. current_time.text:sub(4,5) .. "</span>"

-- Refresh the color
current_time:connect_signal("widget::redraw_needed", function()
current_time.markup = "<span foreground='" .. beautiful.popup.clock.hour .. "'>" .. current_time.text:sub(1,2) .. "</span>" .. current_time.text:sub(3,3) .. "<span foreground='" .. beautiful.popup.clock.minute .. "'>" .. current_time.text:sub(4,5) .. "</span>"
end)

local current_time_widget = {
	current_time,
	layout = wibox.layout.fixed.vertical
}

return current_time_widget
