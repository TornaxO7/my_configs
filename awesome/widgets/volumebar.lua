------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local watch = require("awful.widget.watch")
local gears = require("gears")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local beautiful = require("beautiful")
-----------------------------

----- The actual bar
local volume_bar = wibox.widget {
	max_value = 100,
	value = 0,
	forced_height = popup_values.bars.height,

	shape = gears.shape.hexagon,
	bar_shape = gears.shape.hexagon,

	margins = popup_values.bars.margins,

	background_color = beautiful.popup.bg,

	widget = wibox.widget.progressbar
}

---- Volume icon ------
local volume_icon = wibox.widget {
		image = awesome_dir .. "/favicons/volume/not_mute.ico",
		resize = true,
		opacity = 1,
		visible = true,
		forced_height = popup_values.icons.height,
		forced_width = popup_values.icons.width,

		widget = wibox.widget.imagebox
	}

---- Volume percentage -----
local volume_percentage = wibox.widget {
		text = "ROFL",
		font = "Liberation Sans Bold 14",
		opacity = 1,
		visible = true,
		align = "center",
		valign = "center",
		widget = wibox.widget.textbox
	}

---- Functions -----
local function update_graphic(widget, value, _, _, _)
	value = tonumber(value)
    widget.value = value;

	-- change color if muted
    awful.spawn.easy_async("pamixer --get-mute", function(stdout, stderr, exitreason, exitcode)
		if stdout == "true\n" then
			volume_icon:set_image(awesome_dir .. "/favicons/volume/mute.ico")
			volume_percentage.markup = "<span foreground='" .. beautiful.popup.volume.mute .. "'>" .. volume_percentage.text .. "</span>"
			widget.color = beautiful.popup.volume.mute
		else
			volume_icon:set_image(awesome_dir .. "/favicons/volume/not_mute.ico")
			volume_percentage.markup = "<span foreground='" .. beautiful.popup.volume.not_mute .. "'>" .. volume_percentage.text .. "</span>"
			widget.color = beautiful.popup.volume.not_mute
		end
	end)
	
	volume_percentage.text = value .. "%"
end

local function button_press(_, _, _, button)
	-- Mouse wheel up
	if (button == 4) then awful.spawn("pamixer -i 2", false)
	-- Mouse wheel down 
	elseif (button == 5) then awful.spawn("pamixer -d 2", false)
	
	-- Toggle volume mute
	elseif (button == 1) then awful.spawn("pamixer -t", false)
	end

    awful.spawn.easy_async("pamixer --get-volume", function(stdout, stderr, exitreason, exitcode)
        update_graphic(volume_bar, stdout, stderr, exitreason, exitcode)
    end)
end

-- Refresh the volume value each second
watch("pamixer --get-volume", 0.5, update_graphic, volume_bar)

-- Connect to listings
volume_bar:connect_signal("button::press", button_press)

----- The whole widget -----
local volume_widget = {
	layout = wibox.layout.fixed.horizontal,
	spacing = popup_values.spacing,
	volume_icon,
	{
		layout = wibox.layout.stack,
		volume_bar,
		volume_percentage,
	}
}

return volume_widget
