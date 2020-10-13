------ Awesome library ------
local wibox = require("wibox")
-----------------------------

local current_date = wibox.widget(
	{
		format = "%A %B %d, %Y",
		align = "center",
		valign = "center",
		font = "Liberation Sans Bold 14",
		opacity = 1,
		visible = true,

		widget = wibox.widget.textclock
	}
)

current_date.markup = "<span foreground=#FFFFFF>" .. current_date.text .. "</span>"

local current_date_widget = {
	layout = wibox.layout.fixed.vertical,
	current_date,
}

return current_date_widget
