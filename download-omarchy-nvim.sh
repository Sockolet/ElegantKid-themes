#!/bin/bash
# Download Omarchy Neovim configuration files
# Branch: master (not main)

BRANCH="master"

# Create directories
mkdir -p ~/omarchy-nvim/{lua/{config,plugins},plugin/after,themes}

echo "Downloading Omarchy Neovim config from branch: $BRANCH"
echo ""

# Main config files
curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/config/nvim/init.lua" -o ~/omarchy-nvim/init.lua 2>/dev/null || echo "init.lua not found"
curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/config/nvim/lazyvim.json" -o ~/omarchy-nvim/lazyvim.json 2>/dev/null || echo "lazyvim.json not found"

# Core config files
curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/config/nvim/lua/config/lazy.lua" -o ~/omarchy-nvim/lua/config/lazy.lua 2>/dev/null || echo "lazy.lua not found"
curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/config/nvim/lua/config/options.lua" -o ~/omarchy-nvim/lua/config/options.lua 2>/dev/null || echo "options.lua not found"
curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/config/nvim/lua/config/keymaps.lua" -o ~/omarchy-nvim/lua/config/keymaps.lua 2>/dev/null || echo "keymaps.lua not found"
curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/config/nvim/lua/config/autocmds.lua" -o ~/omarchy-nvim/lua/config/autocmds.lua 2>/dev/null || echo "autocmds.lua not found"

# Plugins directory
curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/config/nvim/lua/plugins/example.lua" -o ~/omarchy-nvim/lua/plugins/example.lua 2>/dev/null || echo "example.lua not found"

# Transparency and theme plugins
curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/config/nvim/plugin/after/transparency.lua" -o ~/omarchy-nvim/plugin/after/transparency.lua 2>/dev/null || echo "transparency.lua not found"

# Theme integration files
for theme in default tokyo-night nord dracula catppuccin; do
    curl -L "https://raw.githubusercontent.com/basecamp/omarchy/${BRANCH}/themes/${theme}/neovim.lua" -o ~/omarchy-nvim/themes/${theme}-neovim.lua 2>/dev/null || echo "${theme}/neovim.lua not found"
done

# Check what we got
echo ""
echo "==========================================="
echo "Downloaded files:"
echo "==========================================="
find ~/omarchy-nvim -type f 2>/dev/null | while read f; do
    size=$(wc -c < "$f" 2>/dev/null | tr -d ' ')
    if [ "$size" -gt 100 ]; then
        echo "✓ $f (${size} bytes)"
    else
        echo "✗ $f (${size} bytes - possibly empty)"
    fi
done
echo "==========================================="
