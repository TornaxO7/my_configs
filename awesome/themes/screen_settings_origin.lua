------ Awesome Library ------
local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local helpers = require("helpers")
-----------------------------

-----===== Widgets =====-----
----- Menu -----
-- Create a launcher widget and a main menu
local myawesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

--local menu_options = awful.menu(
--	{
--		items = { 
--			{ "awesome", myawesomemenu, beautiful.menu_icon },
--            { "open terminal", terminal }
--        }
--    }
--)
--
--local menu_widget = awful.widget.launcher(
--	{ 
--		image = beautiful.menu_icon,
--        menu = menu_options 
--	}
--)
--
--menubar.utils.terminal = terminal -- Set the terminal for applications that require it

----- The display at the top if a window is open ------
local tasklist_buttons = require("widgets.tasklist")

----- Create a wibox for each screen and add it -----
local taglist_buttons = require("widgets.taglist_buttons")

-----===== Prompt =====-----
--local my_prompt = awful.widget.prompt {
--	prompt = "Run: ",
--	with_shell = false
--}

------===== Settings =====-----
----- Set the settings for each screen -----

--local github_widget = require("awesome-wm-widgets.github-activity-widget.github-activity-widget")
awful.screen.connect_for_each_screen(

 	function (tmp_screen)

		----- Prompt -----
		--tmp_screen.promptbox = my_prompt

		----- Layout-icon -----
		tmp_screen.layouticon = awful.widget.layoutbox(tmp_screen)
		tmp_screen.layouticon:buttons(
			gears.table.join(
    			awful.button({ }, 1, function () awful.layout.inc( 1) end),
    		    awful.button({ }, 3, function () awful.layout.inc(-1) end),
    		    awful.button({ }, 4, function () awful.layout.inc( 1) end),
    		    awful.button({ }, 5, function () awful.layout.inc(-1) end)
			)
		)

		-- Tags
		tmp_screen.taglist = awful.widget.taglist {
			screen = tmp_screen,
			filter = awful.widget.taglist.filter.all,
			buttons = taglist_buttons,
			style = {
				shape = gears.shape.powerline,
				taglist_shape = gears.shape.powerline,
			},

			layout = {
				spacing = 20,
				spacing_widget = {
					shape = gears.shape.powerline,
					thickness = dpi(1),
					orientation = "horizontal",
					widget = wibox.widget.separator,

					color = beautiful.separator,
				},
				layout = wibox.layout.fixed.horizontal
			},

  			widget_template = {
				{
					{
						id = "text_role",
						widget = wibox.widget.textbox
					},

					left = dpi(5),
					right = dpi(5),
					widget = wibox.container.margin,
				},

				{
				    {
                        id = "icon_role",
                        widget = wibox.widget.imagebox,
                    },

			    left = dpi(5),
			    right = dpi(5),
			    widget = wibox.container.margin,

                },
				left = dpi(20),
				right = dpi(20),
				widget = wibox.container.margin,
				layout = wibox.layout.fixed.horizontal
			},
			id = "background_role",
			widget = wibox.container.background,
		}

		----- Tasklist (the bar in the middle when a window is open) -----
		tmp_screen.tasklist = awful.widget.tasklist {
			screen = tmp_screen,
			filter = awful.widget.tasklist.filter.currenttags,
			buttons = tasklist_buttons,
			style = {
				shape = gears.shape.powerline,
				shape_border_width = dpi(2),
				spacing = dpi(5),
				align = "center",
				bg_image_focus = awesome_dir .. "/images/galaxy.jpg"
			},

			widget_template = {
				{
					{
						{ ----- Icon -----
							{
								id = "icon_role",
								widget = wibox.widget.imagebox,
							},

							left = dpi(10),
							right = dpi(10),
							widget = wibox.container.margin,
						},

						----- Text Widget -----
						{
							id = "text_role",
							widget = wibox.widget.textbox,
						},
						layout = wibox.layout.align.horizontal,
					},

					left = 10,
					right = 10,
					widget = wibox.container.margin
				},
				id = "background_role",
				widget = wibox.container.background
			}
		}

		----- Create the bar -----
		tmp_screen.bar = awful.wibar(
			{
				position = "top",
				screen = tmp_screen,
				stretch = true,
				border_width = 5,
				type = "dock",
			}
		)

		--tmp_screen.bar.shape = helpers.rounded_rect(90)

        ----- Widgets of the bar -----
		tmp_screen.bar:setup {
			layout = wibox.layout.align.horizontal,

			-- Left Widgets
			{
				layout = wibox.layout.fixed.horizontal,
				--menu_widget,
				tmp_screen.taglist,
				--tmp_screen.promptbox,
			},

			-- Middle Widgets
			tmp_screen.tasklist,

			-- Right Widgets
			{
				{
                    --github_widget {
                    --    username = "TornaxO7"
                    --},
					wibox.widget.systray,
					tmp_screen.layouticon,
					layout = wibox.layout.align.horizontal,
				},

				top = dpi(0),
				right = dpi(5),
				left = dpi(1),
				bottom = dpi(0),
				widget = wibox.container.margin,
			}
		}
	end
)

----- Specifique properties -----
if beautiful.id == "miku" then

	-- Set some value spacially for miku
	screen[1].bar.bg = beautiful.bar.left
	screen[2].bar.bg = beautiful.bar.right

	screen[1].bar.opacity = 0.9
	screen[2].bar.opacity = 0.9
end

-----===== Special widgets =====-----

-- Initialize the first wallapper
set_wallpaper()

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", set_wallpaper)
