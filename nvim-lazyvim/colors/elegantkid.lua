-- ElegantKid colorscheme for Neovim
-- Based on palette: #3F9AAE #79C9C5 #FFE2AF #F96E5B
-- https://github.com/Sockolet/ElegantKid-themes

-- Clear existing highlights
vim.cmd("highlight clear")

-- Reset syntax
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Set colorscheme name
vim.g.colors_name = "elegantkid"

-- Load the colorscheme
require("elegantkid").setup()
