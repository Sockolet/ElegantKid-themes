# ElegantKid Neovim Configuration

A clean Neovim setup with lazy.nvim plugin manager and the ElegantKid theme.

## Features

- **ElegantKid Theme** - Warm teal-to-coral color scheme
- **Treesitter** - Syntax highlighting
- **LSP** - Language server protocol with Mason
- **Completion** - nvim-cmp with LSP, buffer, and path sources
- **Telescope** - Fuzzy finder
- **File Explorer** - Neo-tree
- **Status Line** - Lualine
- **Buffer Line** - Bufferline
- **Git** - Gitsigns
- **Notifications** - nvim-notify
- **Which-key** - Keymap hints

## Installation

### Fresh Install

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this config
git clone https://github.com/Sockolet/ElegantKid-themes.git /tmp/elegantkid
cp -r /tmp/elegantkid/nvim-lazyvim ~/.config/nvim

# Start nvim (plugins will auto-install)
nvim
```

## Key Bindings

Leader key: `Space`

### General
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Buffers
- `<leader>e` - Toggle file explorer

### LSP
- `gd` - Go to definition
- `gr` - Go to references
- `K` - Hover documentation
- `<leader>ca` - Code action

### Navigation
- `<C-h/j/k/l>` - Window navigation
- `<Esc>` - Clear search highlights

## Configuration

Edit files in `~/.config/nvim/lua/`:
- `config/options.lua` - Vim options
- `config/keymaps.lua` - Key mappings
- `plugins/` - Plugin configurations

## Palette

| Color | Hex | Usage |
|-------|-----|-------|
| Teal | `#3F9AAE` | Keywords, types |
| Turquoise | `#79C9C5` | Functions, strings |
| Cream | `#FFE2AF` | Text, highlights |
| Coral | `#F96E5B` | Errors, warnings |
