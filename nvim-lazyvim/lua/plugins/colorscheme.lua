-- ElegantKid Theme Configuration
-- Based on palette: #3F9AAE #79C9C5 #FFE2AF #F96E5B

return {
  -- ElegantKid colorscheme (local development)
  {
    dir = vim.fn.stdpath("config") .. "/lua/elegantkid",
    name = "elegantkid",
    priority = 1000,
    config = function()
      require("elegantkid").setup({
        transparent = false,
        terminal_colors = true,
      })
      vim.cmd("colorscheme elegantkid")
    end,
  },

  -- Configure LazyVim to use ElegantKid
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "elegantkid",
    },
  },
}
