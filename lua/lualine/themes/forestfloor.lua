local c = require('forestfloor.colors')
local cfg = vim.g.forestfloor_config

local forest_floor = {
  normal = {
    a = {bg = c.lualine_normal, fg = c.lualine_normal_text, gui = 'bold'},
    b = {bg = c.lualine_bg_mid, fg = c.white},
    c = {bg = cfg.lualine.transparent and c.none or c.lualine_bg_dark, fg = c.lualine_secondary_text},
    z = {bg = c.lualine_normal, fg = c.white, gui = 'bold'}
  },
  insert = {
    a = {bg = c.lualine_insert, fg = c.lualine_insert_text, gui = 'bold'},
    b = {bg = c.lualine_bg_mid, fg = c.white},
    c = {bg = cfg.lualine.transparent and c.none or c.lualine_bg_dark, fg = c.lualine_secondary_text},
    z = {bg = c.lualine_insert, fg = c.white, gui = 'bold'}
  },
  visual = {
    a = {bg = c.lualine_visual, fg = c.lualine_visual_text, gui = 'bold'},
    b = {bg = c.lualine_bg_mid, fg = c.white},
    c = {bg = cfg.lualine.transparent and c.none or c.lualine_bg_dark, fg = c.lualine_secondary_text},
    z = {bg = c.lualine_visual, fg = c.white, gui = 'bold'}
  },
  replace = {
    a = {bg = c.lualine_replace, fg = c.lualine_replace_text, gui = 'bold'},
    b = {bg = c.lualine_bg_mid, fg = c.white},
    c = {bg = cfg.lualine.transparent and c.none or c.lualine_bg_dark, fg = c.lualine_secondary_text},
    z = {bg = c.lualine_replace, fg = c.white, gui = 'bold'}
  },
  command = {
    a = {bg = c.lualine_command, fg = c.lualine_command_text, gui = 'bold'},
    b = {bg = c.lualine_bg_mid, fg = c.white},
    c = {bg = cfg.lualine.transparent and c.none or c.lualine_bg_dark, fg = c.lualine_secondary_text},
    z = {bg = c.lualine_command, fg = c.white, gui = 'bold'}
  },
  terminal = {
    a = {bg = c.lualine_terminal, fg = c.lualine_terminal_text, gui = 'bold'},
    b = {bg = c.lualine_bg_mid, fg = c.white},
    c = {bg = cfg.lualine.transparent and c.none or c.lualine_bg_dark, fg = c.lualine_secondary_text},
    z = {bg = c.lualine_terminal, fg = c.white, gui = 'bold'}
  },
  inactive = {
    a = {bg = c.lualine_inactive, fg = c.lualine_insert_text, gui = 'bold'},
    b = {bg = c.lualine_bg_mid, fg = c.white},
    c = {bg = cfg.lualine.transparent and c.none or c.lualine_bg_dark, fg = c.lualine_secondary_text},
    z = {bg = c.lualine_inactive, fg = c.white, gui = 'bold'}
  },
}
return forest_floor
