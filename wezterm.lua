-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'Japanesque (Gogh)'
config.automatically_reload_config = false

config.font_size = 18.0

config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 2000 }

-- 最初からフルスクリーンで起動
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():toggle_fullscreen()
end)

config.keys = {
  {
    key = ',',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = '.',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = "w",
    mods = "CMD",
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
    key = 'h',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'LEADER',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'f',
    mods = 'LEADER',
    action = wezterm.action.ToggleFullScreen,
  },
  {
    key = 'c',
    mods = 'LEADER',
    action = wezterm.action.ActivateCopyMode,
  },
  {
    key="Enter",
    mods="SHIFT",
    action=wezterm.action{SendString="\x1b\r"}
  }
}

-- and finally, return the configuration to wezterm
return config
