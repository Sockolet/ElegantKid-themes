# ElegantKid for LazyVim

A complete LazyVim configuration with the ElegantKid theme.

## Features

- **ElegantKid Theme**: Full syntax highlighting with Tree-sitter and LSP support
- **Pre-configured Plugins**:
  - Treesitter for syntax highlighting
  - LSP with mason for language servers
  - nvim-cmp for completion
  - Telescope for fuzzy finding
  - Neo-tree for file explorer
  - Bufferline for tabs
  - Lualine for status line
  - Gitsigns for git integration
  - Which-key for keymap hints
  - Conform for formatting

## Installation

### Fresh Install

1. **Backup your existing Neovim config**:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   mv ~/.local/state/nvim ~/.local/state/nvim.bak
   mv ~/.cache/nvim ~/.cache/nvim.bak
   ```

2. **Clone this config**:
   ```bash
   git clone https://github.com/Sockolet/ElegantKid-themes.git /tmp/elegantkid
   cp -r /tmp/elegantkid/nvim-lazyvim ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```
   Lazy.nvim will automatically install all plugins on first start.

### Add to Existing Config

If you already have a LazyVim setup and just want the theme:

1. Copy the ElegantKid theme files:
   ```bash
   mkdir -p ~/.config/nvim/lua/elegantkid
   cp /tmp/elegantkid/nvim-lazyvim/lua/elegantkid/*.lua ~/.config/nvim/lua/elegantkid/
   ```

2. Add the colorscheme plugin to your `lua/plugins/colorscheme.lua`:
   ```lua
   return {
     {
       dir = vim.fn.stdpath("config") .. "/lua/elegantkid",
       name = "elegantkid",
       priority = 1000,
       config = function()
         require("elegantkid").setup()
         vim.cmd("colorscheme elegantkid")
       end,
     },
     {
       "LazyVim/LazyVim",
       opts = {
         colorscheme = "elegantkid",
       },
     },
   }
   ```

## Key Bindings

### General

- `<Space>` - Leader key
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Buffers
- `<leader>fe` - File explorer (Neo-tree)
- `<leader>e` - Toggle Neo-tree

### LSP

- `gd` - Go to definition
- `gr` - Go to references
- `K` - Hover documentation
- `<leader>ca` - Code action
- `<leader>rn` - Rename

### Git

- `]h` - Next hunk
- `[h` - Previous hunk
- `<leader>ghs` - Stage hunk
- `<leader>ghr` - Reset hunk

### Buffers

- `<S-h>` - Previous buffer
- `<S-l>` - Next buffer
- `<leader>bd` - Delete buffer
- `<leader>bp` - Toggle pin

## Customization

Edit `lua/elegantkid/init.lua` to customize the theme:

```lua
require("elegantkid").setup({
  transparent = true,  -- Enable transparent background
  terminal_colors = true,  -- Set terminal colors
})
```

## Dependencies

- Neovim >= 0.9.0
- Git
- A Nerd Font (for icons)
- Optional: `ripgrep` (for Telescope grep)
- Optional: `fd` (for Telescope find_files)

## License

MIT - See parent repository for details.
