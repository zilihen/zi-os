local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end


config.automatically_reload_config = true
config.enable_wayland = true

-- Default Program
config.default_prog = { 'fish' }

-- Font
config.font_size = 16
config.line_height = 1.2
config.font = wezterm.font("JetBrainsMono Nerd Font", {weight = 'Bold'})
config.front_end = 'WebGpu'

-- Colors
config.colors = {
  cursor_border = "white",
  foreground = '#ffffff',
  background = "black",
  cursor_border = '#52ad70',
  cursor_bg = "white",
  selection_fg = 'black',
  selection_bg = '#ffffff',
  split = '#444444',
  ansi = {
      '#1e1e1e', -- black
      'red', -- red
      'green', -- green
      'yellow', -- yellow
      'blue', -- blue
      'magenta', -- magenta/purple
      'cyan', -- cyan
      'white', -- white
   },
   brights = {
      '#555555', -- black
      'red', -- red
      'green', -- green
      'yellow', -- yellow
      '#2A71FF', -- blue
      'magenta', -- magenta/purple
      'cyan', -- cyan
      'white', -- white
   },
}

-- Windows and appearance
config.window_decorations = "NONE"
config.window_background_opacity = 0.9
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "BlinkingBar"
config.hide_tab_bar_if_only_one_tab = true


-- Key Bindings
config.keys = {
  { 
    key = "q", 
    mods ="SUPER", 
    action = wezterm.action.CloseCurrentPane {confirm = true},
  },

  { 
    key = "=", 
    mods ="CTRL", 
    action = wezterm.action.IncreaseFontSize
  },

  { 
    key = "-", 
    mods ="CTRL", 
    action = wezterm.action.DecreaseFontSize
  },
}

-- Mouse Bindings
config.mouse_bindings = {
  {
    event = { Drag = { streak = 1, button = 'Left' } },
    mods = "SUPER",
    action = wezterm.action.StartWindowDrag,
  },
}

return config
