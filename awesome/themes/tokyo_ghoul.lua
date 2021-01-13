---------------------------
-- Default awesome theme --
-- important library: beautiful
---------------------------
local helpers = require("helpers")
local awful = require("awful")
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local taglist_square_size = dpi(4)

-----===== Settings =====-----
local theme = {}

theme.is_violet = false

theme.wallpaper = awesome_dir .. "/images/tokyo_ghoul.jpg"

theme.bg_normal     = "#0B2F3A"
theme.bg_focus      = "#086A87"
theme.bg_urgent     = "#8A0808"
theme.bg_minimize   = "#0B6138"
theme.bg_systray    = bg_normal

theme.fg_normal     = "#A4A4A4"
theme.fg_focus      = "#FFFFFF"
theme.fg_urgent     = "#DF0101"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#6E6E6E"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

theme.height = dpi(100)
theme.width = dpi(100)

theme.notification = {}
theme.notification.critical = "#8A0808"
theme.notification.bg = theme.bg_normal
theme.notification.fg = "#5B8234"

theme.separator = "#088A85"

----- Widgets -----
theme.popup = {}
theme.popup.bg = "#0B243B"

theme.popup.clock = {}
theme.popup.clock.hour = "#FF8000"
theme.popup.clock.minute = "#80FF00"

theme.popup.volume = {}
theme.popup.volume.not_mute = "#D7DF01"
theme.popup.volume.mute = "#5E610B"

theme.popup.ram = "#FF8000"
theme.popup.swap = "#8A0808"
theme.popup.cpu = "#585858"
theme.popup.download = "#01DFD7"
theme.popup.upload ="#FA5858"

theme.popup.filesystem = {}
theme.popup.filesystem.border = "#BDBDBD"
theme.popup.filesystem.free = "#00FF00"
theme.popup.filesystem.used = "#FF0000"

theme.popup.music = {}
theme.popup.music.title = "#FFFF00"
theme.popup.music.bar = "#00FFFF"

----- Bar -----
theme.bar = {}
theme.bar.bg_focus = "#04B4AE"

theme.font = "Liberation Sans Bold 13"
theme.systray_icon_spacing = 5
theme.useless_gap   = "10"

-- Menu
theme.menu_icon = awesome_dir .. "/favicons/arch_icon.svg"

theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)
----- Images/Icons -----
theme.titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_activep.ng"

theme.titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."default/titlebar/maximized_focus_active.png"

-- can use your own layout icons like this:
theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
