------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local watch = require("awful.widget.watch")
local gears = require("gears")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-----------------------------

----- Widgets -----
local song_image = wibox.widget {
	id = "image_box",
	image = awesome_dir .. "/images/miku_city.jpg",
	resize = true,
	--clip_shape = helpers.part_round_rect(10, false, true, false, true),
	widget = wibox.widget.imagebox,
	forced_height = dpi(200),
	forced_width = dpi(200)
}

local current_song_text = wibox.widget {
	text = "ROFL",
	align = "center",
	valign = "center",
	font = "Liberation Sans Bold 14",
	opacity = 1,
	visible = true,

	widget = wibox.widget.textbox
}

current_song_text.markup = "<span foreground='" .. beautiful.popup.music.title .. "'>" .. current_song_text.text .. "</span>"

local current_text = wibox.widget {
	text = "ROFL",
	align = "center",
	valign = "center",
	font = "Liberation Sans Bold 14",
	opacity = 1,
	visible = true,

	widget = wibox.widget.textbox
}

local max_text = wibox.widget {
	text = "ROFL",
	align = "center",
	valign = "center",
	font = "Liberation Sans Bold 14",
	opacity = 1,
	visible = true,
	
	widget = wibox.widget.textbox
}

local music_progressbar = wibox.widget {
	forced_height = popup_values.bars.height,

	shape = gears.shape.rounded_bar,
	bar_shape = gears.shape.rounded_bar,

	margins = popup_values.bars.margins,

	color = beautiful.popup.music.bar,
	background_color = beautiful.popup.bg,

	widget = wibox.widget.progressbar
}

----- Functions -----
local function convert_to_minutes(inputstr)
	local new_str = {}

	if sep == nil then
		sep = "%s"
	end

	for str in string.gmatch(inputstr, "([^:]+)") do
		table.insert(new_str, tonumber(str))
	end

	if new_str[1] == nil or new_str[2] == nil then
		return 1
	else
		return (60 * new_str[1] + new_str[2])
	end
end

local update_image = function()

	local get_art_url = [[
	dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get \
	string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | 
	grep -A 1 "artUrl"| grep -v "artUrl" | awk -F '"' '{print $2}' |
	sed -e 's/open.spotify.com/i.scdn.co/g'
	]]

	awful.spawn.easy_async_with_shell(
		get_art_url,
		function(link)
			
			local download_art = [[
			tmp_dir="/tmp/awesomewm/${USER}/"
			tmp_cover_path=${tmp_dir}"cover.jpg"

			if [ ! -d $tmp_dir ]; then
				mkdir -p $tmp_dir;
			fi

			if [ -f $tmp_cover_path]; then
				rm $tmp_cover_path
			fi

			wget -O $tmp_cover_path ]] ..link .. [[

			echo $tmp_cover_path
			]]

			awful.spawn.easy_async_with_shell(
				download_art,
				function(stdout)

					local album_icon = stdout:gsub('%\n', '')

					song_image:set_image(gears.surface.load_uncached(album_icon))
				end
			)
		end
	)
end

local function refresh(widget, output, _, _, _)
	-- set the text 
	widget.text = output


	-- get the current position
	awful.spawn.easy_async(awesome_dir .. "/scripts/music.sh 3",
		function(current_position)

			--music_progressbar:set_value(convert_to_minutes(current_position))
			if current_position ~= "0\n" then
				music_progressbar.value = convert_to_minutes(current_position)
				song_image:set_image(awesome_dir .. "/images/miku_epic.jpg")
			else
				update_image()
			end
			current_text.text = current_position
	end)

	---- get the max position
	awful.spawn.easy_async(awesome_dir .. "/scripts/music.sh 2",
		function(max_position)
			if max_position ~= "0\n" then
				music_progressbar.max_value = convert_to_minutes(max_position)
			end
			max_text.text = max_position
	end)
end

watch(awesome_dir .. "/scripts/music.sh 1", 1, refresh, current_song_text)

local music_widget = {
	layout = wibox.layout.fixed.horizontal,
	spacing = popup_values.spacing,

	{
		--current_song_text,
		--song_image,
		{ 
			{
				song_image,
				top = dpi(0),
				left = dpi(20),
				right = dpi(20),
				bottom = dpi(20),

				widget = wibox.container.margin
			},
			current_song_text,

			layout = wibox.layout.fixed.horizontal
		},
		{
			current_text,
			music_progressbar,
			max_text,

			forced_height = dpi(35),
			layout = wibox.layout.align.horizontal
		},
		--song_image,
		layout = wibox.layout.fixed.vertical
	}
}

return music_widget
