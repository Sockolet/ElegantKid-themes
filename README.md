# ElegantKid Theme Collection

A cohesive, warm theme for terminal applications based on a teal-to-coral palette.

![Palette](https://colorhunt.co/palette/3f9aae79c9c5ffe2aff96e5b)

## Palette

| Color | Hex | Usage |
|-------|-----|-------|
| **Teal** | `#3F9AAE` | Primary accent, directories, boxes |
| **Turquoise** | `#79C9C5` | Secondary accent, success, links |
| **Cream** | `#FFE2AF` | Text, highlights, warm elements |
| **Coral** | `#F96E5B` | Warnings, important alerts, high usage |
| **Dark BG** | `#1a1f2e` | Terminal background |

## Supported Applications

### Ghostty
Copy `ghostty/ElegantKid` to your Ghostty themes directory:
```bash
cp ghostty/ElegantKid ~/.config/ghostty/themes/
```
Then set in `~/.config/ghostty/config`:
```
theme = ElegantKid
```

### Oh-My-Posh
Copy `oh-my-posh/ElegantKid.omp.json` to your themes directory:
```bash
cp oh-my-posh/ElegantKid.omp.json ~/.poshthemes/
```
Then source it in your `.bashrc` or `.zshrc`:
```bash
eval "$(oh-my-posh init bash --config ~/.poshthemes/ElegantKid.omp.json)"
```

### colorls
Copy `colorls/dark_colors.yaml` to your colorls config:
```bash
cp colorls/dark_colors.yaml ~/.config/colorls/
```

### btop
Copy `btop/ElegantKid.theme` to your btop themes:
```bash
cp btop/ElegantKid.theme ~/.config/btop/themes/
```
Then set in `~/.config/btop/btop.conf`:
```ini
color_theme = "ElegantKid"
```

### Neovim
Using [lazy.nvim](https://github.com/folke/lazy.nvim):
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
See [nvim/README.md](nvim/README.md) for more installation options and configuration.

## Preview

The theme provides a consistent look across all tools:
- **Ghostty**: Dark blue-gray background with cream text, coral cursor
- **Oh-My-Posh**: Teal → Turquoise → Cream → Coral powerline segments
- **colorls**: Color-coded file types and git status
- **btop**: Gradient meters from cool (turquoise) to hot (coral)
- **Neovim**: Full syntax highlighting with Tree-sitter and LSP support

## License

MIT - Feel free to use and modify as you like.
