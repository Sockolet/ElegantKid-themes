# ElegantKid for OpenCode

A warm, cohesive theme for [OpenCode](https://opencode.ai/) based on the ElegantKid palette.

![Palette](https://colorhunt.co/palette/3f9aae79c9c5ffe2aff96e5b)

## Palette

| Color | Hex | Usage |
|-------|-----|-------|
| **Teal** | `#3F9AAE` | Primary, keywords, headings |
| **Turquoise** | `#79C9C5` | Secondary, success, functions |
| **Cream** | `#FFE2AF` | Text, strings, highlights |
| **Coral** | `#F96E5B` | Accent, errors, numbers |
| **Dark BG** | `#1a1f2e` | Background |
| **Panel BG** | `#2a3a4e` | Panel background |

## Installation

### Global Installation

Copy the theme to your OpenCode themes directory:

```bash
mkdir -p ~/.config/opencode/themes
cp ElegantKid.json ~/.config/opencode/themes/
```

### Project-Specific Installation

Copy to your project's `.opencode` directory:

```bash
mkdir -p .opencode/themes
cp ElegantKid.json .opencode/themes/
```

## Activation

Set the theme in your OpenCode configuration:

```json
{
  "theme": "ElegantKid"
}
```

Or use the OpenCode CLI:

```bash
opencode config set theme ElegantKid
```

## Color Mapping

### UI Elements
- **Primary**: Teal (`#3F9AAE`) - Main accent color
- **Secondary**: Turquoise (`#79C9C5`) - Secondary accent
- **Accent**: Coral (`#F96E5B`) - Highlights and important elements
- **Background**: Dark blue-gray (`#1a1f2e`)
- **Text**: Cream (`#FFE2AF`)

### Syntax Highlighting
- **Keywords**: Teal
- **Functions**: Turquoise
- **Strings**: Cream
- **Numbers**: Coral
- **Comments**: Muted teal
- **Variables**: Light cream

### Terminal Colors
The theme includes a full 16-color terminal palette with the ElegantKid colors.

## License

MIT - See parent repository for details.
