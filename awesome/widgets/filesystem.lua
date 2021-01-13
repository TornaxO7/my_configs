------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")
-----------------------------

----- Icon -----
local filesystem_icon = wibox.widget {
	image = awesome_dir .. "/favicons/filesystem.ico",
	resize = true,
	opacity = 1,
	visible = true,
	forced_height = popup_values.icons.height,
	forced_width = popup_values.icons.width,

	widget = wibox.widget.imagebox
}

----- Chart -----
local filesystem_char = wibox.widget {

	data_list = {
		{"Used", 10},
		{"Free", 90}
	},

	colors = {
		beautiful.popup.filesystem.free,
		beautiful.popup.filesystem.used
	},
	border_color = beautiful.popup.filesystem.border,

	border_width = 2,

	forced_height = popup_values.piechar.height,

	display_labels = true,
	opacity = 1,
	visible = true,

	widget = wibox.widget.piechart
}

local filesystem_widget = {
	layout = wibox.layout.fixed.horizontal,
	filesystem_icon,
	filesystem_char
}

----- Functions ----
local function mouse_press(_, _, _, button)

	awful.spawn("notify-send 'refreshed value")
	-- just left-clicked it
	if (button == 1) then
		awful.spawn.easy_async(awesome_dir .. "/scripts/filesystem.sh 'free'", function(free_value)
			awful.spawn.easy_async(awesome_dir .. "/scripts/filesystem.sh 'used'", function(used_value)
				filesystem_char.data_list = {
					{string.format("Free: %dG", free_value), tonumber(free_value)},
					{string.format("Used: %dG", used_value), tonumber(used_value)}
				}
			end)
		end)
	end
end

-- Set the values
mouse_press(nil, nil, nil, 1)

-- Refresh values when user pressed with the mouse
filesystem_char:connect_signal("button::press", mouse_press)

return filesystem_widget
