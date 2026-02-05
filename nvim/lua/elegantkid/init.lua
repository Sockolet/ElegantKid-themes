-- ElegantKid - A warm colorscheme for Neovim
-- Based on palette: #3F9AAE #79C9C5 #FFE2AF #F96E5B
-- https://github.com/Sockolet/ElegantKid-themes

local M = {}

-- Default configuration
M.config = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = { bold = true },
    variables = {},
    strings = {},
    types = {},
  },
  integrations = {
    treesitter = true,
    lsp = true,
    cmp = true,
    gitsigns = true,
    telescope = true,
    which_key = true,
    notify = true,
    neo_tree = true,
    nvim_tree = true,
    indent_blankline = true,
    flash = true,
  },
}

-- Terminal color setup
function M.set_terminal_colors(palette)
  local c = palette

  -- Standard 16 colors
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_1 = c.coral
  vim.g.terminal_color_2 = c.turquoise
  vim.g.terminal_color_3 = c.cream
  vim.g.terminal_color_4 = c.teal
  vim.g.terminal_color_5 = c.magenta
  vim.g.terminal_color_6 = c.turquoise
  vim.g.terminal_color_7 = c.fg

  -- Bright variants
  vim.g.terminal_color_8 = c.bg_light
  vim.g.terminal_color_9 = c.coral_light
  vim.g.terminal_color_10 = c.turquoise_light
  vim.g.terminal_color_11 = c.cream_light
  vim.g.terminal_color_12 = c.teal_light
  vim.g.terminal_color_13 = c.purple
  vim.g.terminal_color_14 = c.turquoise_light
  vim.g.terminal_color_15 = c.cream_light
end

-- Main setup function
function M.setup(user_config)
  -- Merge user config with defaults
  M.config = vim.tbl_deep_extend("force", M.config, user_config or {})

  -- Load palette
  local palette = require("elegantkid.palette")

  -- Get highlight groups
  local theme = require("elegantkid.theme")
  local highlights = theme.get(palette, M.config)

  -- Apply all highlights
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Set terminal colors if enabled
  if M.config.terminal_colors then
    M.set_terminal_colors(palette)
  end
end

-- Legacy load function
function M.load()
  M.setup()
end

return M