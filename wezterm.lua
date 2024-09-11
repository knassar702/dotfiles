-- wezterm.lua
local wezterm = require 'wezterm'

return {
  -- General configuration
  font = wezterm.font("JetBrains Mono"),
  font_size = 12.0,
  color_scheme = "OneDark",

  -- Default shell
  default_prog = { "powershell.exe" },

  -- Key bindings
  keys = {
    -- Multiplex terminal panes, tabs, and windows
    {key="T", mods="CTRL|SHIFT", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
    {key="N", mods="CTRL|SHIFT", action=wezterm.action{wezterm.action.SpawnWindow}},

    -- Switch between tabs
    {key="]", mods="CTRL|ALT", action=wezterm.action{ActivateTabRelative=1}},
    {key="[", mods="CTRL|ALT", action=wezterm.action{ActivateTabRelative=-1}},
    {key="1", mods="CTRL|ALT", action=wezterm.action{ActivateTab=0}},
    {key="2", mods="CTRL|ALT", action=wezterm.action{ActivateTab=1}},
    {key="3", mods="CTRL|ALT", action=wezterm.action{ActivateTab=2}},
    {key="4", mods="CTRL|ALT", action=wezterm.action{ActivateTab=3}},
    {key="5", mods="CTRL|ALT", action=wezterm.action{ActivateTab=4}},
    {key="6", mods="CTRL|ALT", action=wezterm.action{ActivateTab=5}},
    {key="7", mods="CTRL|ALT", action=wezterm.action{ActivateTab=6}},
    {key="8", mods="CTRL|ALT", action=wezterm.action{ActivateTab=7}},
    {key="9", mods="CTRL|ALT", action=wezterm.action{ActivateTab=8}},
    {key="0", mods="CTRL|ALT", action=wezterm.action{ActivateTab=9}},

    -- Split panes
    {key="%", mods="CTRL|SHIFT|ALT", action=wezterm.action.SplitHorizontal},
    {key='"', mods="CTRL|SHIFT|ALT", action=wezterm.action.SplitVertical},

    -- Move between panes
    {key="LeftArrow", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Left"}},
    {key="RightArrow", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Right"}},
    {key="UpArrow", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Up"}},
    {key="DownArrow", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Down"}},

    -- Searchable Scrollback
    {key="F", mods="CTRL|SHIFT", action=wezterm.action{wezterm.action.ActivateSearch}},
  },

  -- Other settings
  use_ime = true,
  enable_scroll_bar = true,
  initial_cols = 120,
  initial_rows = 30,
  window_background_opacity = 0.9,
}
