# Zelda Colorscheme for Neovim

A dark forest colorscheme for Neovim, inspired by the Legend of Zelda. Built with treesitter and LSP semantic token support.

## Palette

| Name | Hex | Use |
|------|-----|-----|
| Dark Forest | `#0d1a14` | Background |
| Depths | `#0a1410` | Statusline, tabline |
| Emerald | `#0e5135` | Selection |
| Grass | `#0d9263` | Keywords, functions |
| Rupee | `#4aba91` | Strings, highlights |
| Triforce | `#d4ce46` | Types, constants |
| Shadow | `#494b4b` | Comments |

## Requirements

- Neovim >= 0.9.0

## Installation

### lazy.nvim

```lua
{
  "your-username/zelda-colorscheme-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("zelda")
  end,
}
```

### packer.nvim

```lua
use {
  "your-username/zelda-colorscheme-nvim",
  config = function()
    vim.cmd.colorscheme("zelda")
  end,
}
```

### vim-plug

```vim
Plug 'your-username/zelda-colorscheme-nvim'
colorscheme zelda
```

## Usage

```vim
:colorscheme zelda
```

Or in Lua:

```lua
vim.cmd.colorscheme("zelda")
```

## Supported Features

- Editor UI elements (statusline, popup menus, floats, etc.)
- Syntax highlighting
- Treesitter
- LSP diagnostics and semantic tokens
- Terminal colors
- Diff and spell checking

## License

MIT
