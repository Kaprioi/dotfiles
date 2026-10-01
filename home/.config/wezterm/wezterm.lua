-- ~/.wezterm.lua (or ~/.config/wezterm/wezterm.lua)
-- A clean, modern WezTerm config: nice color scheme, font, tab bar, padding, and cursor.

local wezterm = require("wezterm")
local config = wezterm.config_builder and wezterm.config_builder() or {}

------------------------------------------------------------
-- Color scheme
------------------------------------------------------------
-- Try "Catppuccin Mocha", "Tokyo Night", "Dracula", "Nord", or "Gruvbox Dark"
-- Run `wezterm ls-fonts --list-system` or check https://wezfurlong.org/wezterm/colorschemes/
config.color_scheme = "Catppuccin Mocha"

------------------------------------------------------------
-- Font
------------------------------------------------------------
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono", weight = "Medium" },
	{ family = "Symbols Nerd Font Mono" }, -- icons/glyphs fallback
})
config.font_size = 14.0
config.line_height = 1.1

------------------------------------------------------------
-- Window appearance
------------------------------------------------------------
config.window_decorations = "RESIZE" -- no title bar, keep resize border
config.window_background_opacity = 0.92
config.macos_window_background_blur = 20 -- ignored on non-macOS
config.window_padding = {
	left = 16,
	right = 16,
	top = 16,
	bottom = 12,
}

-- Subtle inactive-pane dimming so the focused pane pops
config.inactive_pane_hsb = {
	saturation = 0.8,
	brightness = 0.6,
}

------------------------------------------------------------
-- Tab bar
------------------------------------------------------------
config.enable_tab_bar = true
config.use_fancy_tab_bar = false -- retro/minimal tab bar looks cleaner with padding
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32

config.colors = {
	tab_bar = {
		background = "rgba(0,0,0,0)",
		active_tab = {
			bg_color = "#89b4fa",
			fg_color = "#1e1e2e",
			intensity = "Bold",
		},
		inactive_tab = {
			bg_color = "rgba(0,0,0,0)",
			fg_color = "#a6adc8",
		},
		inactive_tab_hover = {
			bg_color = "#313244",
			fg_color = "#cdd6f4",
		},
		new_tab = {
			bg_color = "rgba(0,0,0,0)",
			fg_color = "#a6adc8",
		},
	},
}

------------------------------------------------------------
-- Cursor
------------------------------------------------------------
config.default_cursor_style = "SteadyBar"
config.cursor_blink_rate = 500
config.animation_fps = 60

------------------------------------------------------------
-- Misc niceties
------------------------------------------------------------
config.scrollback_lines = 5000
config.adjust_window_size_when_changing_font_size = false
config.audible_bell = "Disabled"

return config
