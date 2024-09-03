local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Appearence
config.color_scheme = "Dracula (Official)"
config.enable_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 20
config.window_decorations = "RESIZE"

-- config.window_background_image = "/Users/nelson/Pictures/terminal/dracula-cat-282a36.png"
-- config.window_background_image_hsb = {
-- 	brightness = 0.05,
-- 	saturation = 0.7,
-- }

return config
