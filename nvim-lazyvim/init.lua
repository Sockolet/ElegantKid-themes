-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load core config
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Setup lazy.nvim with plugins
require("lazy").setup({
  spec = { import = "plugins" },
  defaults = { lazy = false },
  install = { colorscheme = { "elegantkid" } },
  checker = { enabled = true, notify = false },
})

-- Load ElegantKid theme
require("elegantkid").setup()
vim.cmd("colorscheme elegantkid")
