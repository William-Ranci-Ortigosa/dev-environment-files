-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local theme = wezterm.plugin.require('https://github.com/neapsix/wezterm').main

config.font = wezterm.font("MonaspiceRn Nerd Font Mono")
config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.colors = theme.colors()
config.font_size = 20.0
config.cursor_blink_rate = 0

-- and finally, return the configuration to wezterm
return config
