# ElegantKid for Neovim

A warm, cohesive colorscheme for Neovim based on the ElegantKid palette.

![Palette](https://colorhunt.co/palette/3f9aae79c9c5ffe2aff96e5b)

## Features

- 🎨 Full support for the ElegantKid palette
- 🌳 Full Tree-sitter support
- 🔧 LSP semantic token highlighting
- 🔌 Support for popular plugins
- 💻 Terminal color integration
- 🪟 Optional transparent background

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "Sockolet/ElegantKid-themes",
  name = "elegantkid",
  priority = 1000,
  config = function()
    require("elegantkid").setup()
    vim.cmd("colorscheme elegantkid")
  end
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "Sockolet/ElegantKid-themes",
  as = "elegantkid",
  config = function()
    require("elegantkid").setup()
    vim.cmd("colorscheme elegantkid")
  end
})
```

### Manual Installation

1. Copy the `nvim/` directory contents to your Neovim configuration:
   ```bash
   mkdir -p ~/.config/nvim/lua/elegantkid
   cp lua/elegantkid/*.lua ~/.config/nvim/lua/elegantkid/
   cp colors/elegantkid.lua ~/.config/nvim/colors/
   ```

2. Add to your `init.lua`:
   ```lua
   require("elegantkid").setup()
   vim.cmd("colorscheme elegantkid")
   ```

## Configuration

```lua
require("elegantkid").setup({
  -- Enable transparent background
  transparent = false,

  -- Set terminal colors (vim.g.terminal_color_*)
  terminal_colors = true,

  -- Style customizations
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = { bold = true },
    variables = {},
    strings = {},
    types = {},
  },

  -- Plugin integrations
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
})
```

## Supported Plugins

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (LSP semantic tokens)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)

## Color Palette

| Color | Hex | Usage |
|-------|-----|-------|
| Teal | `#3F9AAE` | Keywords, types, borders |
| Turquoise | `#79C9C5` | Functions, strings, success |
| Cream | `#FFE2AF` | Text, highlights |
| Coral | `#F96E5B` | Errors, warnings, operators |

## License

MIT - See parent repository for details.
