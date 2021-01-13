-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")

-- Widget and layout library
local wibox = require("wibox")

-- Theme handling library
local beautiful = require("beautiful")

-- Notification library
local naughty = require("naughty")
local hotkeys_popup = require("awful.hotkeys_popup")

-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-----===== Global Functions =====-----
function set_wallpaper()

    -- Wallpaper
    if beautiful.wallpaper then
        -- special violet evergarden wallpaper
        if beautiful.id == "violet" then
            gears.wallpaper.maximized(beautiful.wallpaper.first, 1, true);
            gears.wallpaper.maximized(beautiful.wallpaper.second, 2, true);
        else
            gears.wallpaper.maximized(beautiful.wallpaper, nil, true)
        end
    end
end

-----===== Error handling =====-----
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
naughty.connect_signal("request::display_error", function(message, startup)
    naughty.notification {
        urgency = "critical",
        title   = "Oops, an error happened"..(startup and " during startup!" or "!"),
        message = message
    }
end)
-----===== Startup =====-----

-- get global values
require("global_values")

-- load theme
beautiful.init("~/.config/awesome/theme.lua")

-----===== Layouts =====-----
--local treetile = require("treetile")
--treetile.focusnew = true
--treetile.direction = "right"

awful.layout.layouts = {
    --awful.layout.suit.floating,
    awful.layout.suit.max,
    -- awful.layout.suit.max.fullscreen,
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
	--treetile,
    -- awful.layout.suit.fair.horizontal,
    -- awful.layout.suit.spiral,
    -- awful.layout.suit.spiral.dwindle,
    -- awful.layout.suit.magnifier,
    -- awful.layout.suit.corner.nw,
    -- awful.layout.suit.corner.ne,
    -- awful.layout.suit.corner.sw,
    -- awful.layout.suit.corner.se,
}

-- layout_popup
require("widgets.layout_popup")

-----===== Notify =====-----
require("widgets.notification.notify")

-----===== Tags =====-----
require("tag")

-----===== Mouse bindings =====-----
require("mappings.mouse")

-----===== Keybindings =====-----
globalkeys = require("mappings.keybindings")

-- keybindings for each window
clientkeys = require("mappings.clientkeys")
client_mouse = require("mappings.client_mouse")

root.keys(globalkeys) 	-- set keys
local rules = require("rules")

-----======###### Bar-Widgets ######======-----
-----===== Screen settings =====-----
-- this will set the settings for each screen
require("screen_settings")

-----===== Signals =====-----
-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c)
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    -- if not awesome.startup then awful.client.setslave(c) end

    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position then
        -- Prevent clients from being unreachable after screen count changes.
        awful.placement.no_offscreen(c)
    end
end)

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:emit_signal("request::activate", "mouse_enter", {raise = false})
end)

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
client.connect_signal("request::manage", function(client, context)

    --naughty.notification {
    --    title = client.name,
    --    message = string.format("Is floating: %s\nContext: %s", tostring(client.floating), context),
    --    timeout = 10
    --}

    if client.floating and context == "new" then
        --naughty.notification {
        --    title = "success",
        --    timeout = 5
        --}
        client.placement = awful.placement.centered
    end
end)

-- load programs
awful.spawn.easy_async_with_shell("~/.config/awesome/scripts/startup.sh")

-- diable client history
awful.client.focus.history.disable_tracking()

gears.timer.start_new(10, function() collectgarbage("step", 20000) return true end)
