------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")
local watch = require("awful.widget.watch")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-----------------------------

----- Textboxes -----
local download_icon = wibox.widget {
	image = awesome_dir .. "/favicons/download.ico",
	resize = true,
	opacity = 1,
	visible = true,
	forced_width = popup_values.icons.width,
	forced_height = popup_values.icons.height,

	widget = wibox.widget.imagebox
}

local download_textbox = wibox.widget {
	text = "ROFL",
	align = "center",
	valign = "center",
	font = "Liberation Sans Bold 13",
	opacity = 1,
	visible = true,

	widget = wibox.widget.textbox
}

local upload_icon = wibox.widget {
	image = awesome_dir .. "/favicons/upload.ico",
	resize = true,
	opacity = 1,
	visible = true,
	forced_width = popup_values.icons.width,
	forced_height = popup_values.icons.height,

	widget = wibox.widget.imagebox
}

local upload_textbox = wibox.widget {
	text = "ROFL",
	align = "center",
	valign = "center",
	font = "Liberation Sans Bold 13",
	opacity = 1,
	visible = true,

	widget = wibox.widget.textbox
}

----- Radialprogressbars -----
local download_bar = wibox.widget {
	paddings = {
		top = 0,
		right = 2,
		left = 5,
		bottom = 0
	},
	color = beautiful.popup.download,
	border_color = beautiful.popup.bg,
	border_width = dpi(3),

	forced_width = popup_values.radialprogressbar.width,

	min_value = 0,
	max_value = 20,

	opacity = 1,
	visible = true,
	widget = wibox.container.radialprogressbar
}

local upload_bar = wibox.widget {
	paddings = {
		top = 0,
		right = 2,
		left = 5,
		bottom = 0
	},
	value = 0,
	color = beautiful.popup.upload,
	border_color = beautiful.popup.bg,
	border_width = dpi(3),

	forced_width = popup_values.radialprogressbar.width,

	min_value = 0,
	max_value = 20,

	opacity = 1,
	visible = true,

	widget = wibox.container.radialprogressbar
}

download_bar.widget = download_textbox
upload_bar.	widget = upload_textbox

----- Functions -----
local function refresh_values(widget, download_rate, _, _, _)
	-- Convert to MB
	local download_rate = tonumber(download_rate) / 1000
	local upload_rate = 0

	-- get the upload_rate
	awful.spawn.easy_async_with_shell(awesome_dir .. "/scripts/network.sh 'upload'", function(stdout)
		upload_rate = tonumber(stdout) / 1000
		upload_textbox.text = string.format("%.4f", upload_rate) .. " Kbit/s"
		upload_bar.value = upload_rate
	end)

	download_textbox.text = string.format("%.4f", download_rate) .. " Kbit/s"

	download_bar.value = download_rate

end

watch(awesome_dir .. "/scripts/network.sh 'download'", 0, refresh_values, download_bar)

----- Widget -----
local network_widget = {
	layout = wibox.layout.fixed.horizontal,
	spacing = popup_values.spacing,

	download_icon,
	download_bar,
	upload_icon,
	upload_bar
}

return network_widget
