------ Awesome library -----
local beautiful = require("beautiful")
local awful = require("awful")
local naughty = require("naughty")
local gears = require("gears")
local wibox = require("wibox")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local ruled = require("ruled")
local helpers = require("helpers")
----------------------------

local icon_size = dpi(150)

-- general rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     keys = clientkeys,
                     buttons = client_mouse,
                     screen = awful.screen.preferred,
                     placement = awful.placement.no_overlap+awful.placement.no_offscreen,
                     --placement = awful.placement.centered
     }
    },

	-----===== Application specifique =====-----
	-- browsers
	{ rule = { class = "firefox"},
		properties = { screen = 2, tag = "2"}
	},

	{ rule = { class = "Chromium"},
		properties = { screen = 2, tag = "2"}
	},

	-- social stuff
	{ rule = { class = "discord" },
		properties = { screen = 2, tag = "5"}
	},

	{ rule = { class = "Rambox"},
		properties = { screen = 2, tag = "5"}
	},

	-- microsoft teams
	{ rule = { class = "Microsoft Teams - Preview"},
		properties = { screen = 1, tag = "6"}
	},
	
	----- JetBrains -----
	{ rule = { class = "jetbrains-pycharm"},
		properties = { screen = 1, tag = "3"}
	},

	{ rule = { class = "jetbrains-clion"},
		properties = { screen = 1, tag = "3"}
	},

    -- Floating clients.
     { rule_any = {
         instance = {
           "DTA",  -- Firefox addon DownThemAll.
           "copyq",  -- Includes session name in class.
           "pinentry",
         },
         class = {
           "Arandr",
           "Blueman-manager",
           "Gpick",
           "Kruler",
           "MessageWin",  -- kalarm.
           "Sxiv",
           "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
           "Wpa_gui",
           "veromix",
           "xtightvncviewer",
		   "Xsane"
	   },

         -- Note that the name property shown in xprop might be set slightly after creation of the client
         -- and the name shown there might not match defined rules here.
         name = {
           "Event Tester",  -- xev.
         },
         role = {
           "AlarmWindow",  -- Thunderbird's calendar.
           "ConfigManager",  -- Thunderbird's about:config.
           "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
         }
       }, properties = { floating = true }},

    -- Spawn floating clients centered
    { rule_any = {floating = true},
        properties = {
            placement = awful.placement.centered + awful.placement.no_overlap+awful.placement.no_offscreen
        }
    },

    -- Add titlebars to normal clients and dialogs
    { rule_any = {type = { "normal", "dialog" }
      }, properties = { titlebars_enabled = false}
    },
}
