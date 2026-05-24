# nvim-config

Personal Neovim config built around Lua and lazy.nvim.

## Features

- Plugin management with `lazy.nvim`.
- LSP setup with Mason, `nvim-lspconfig`, and `nvim-cmp` completion.
- Formatting on save through `conform.nvim` for Lua, Go, JavaScript, and TypeScript.
- Fuzzy finding and live grep with Telescope and native FZF.
- Treesitter highlighting, indentation, context, and custom `templ` support.
- Debugging with `nvim-dap`, `nvim-dap-ui`, and Delve for Go.
- Go test integration with Neotest and DAP support.
- Navigation and workflow plugins including Harpoon, Trouble, Undotree, Fugitive, and vim-tmux-navigator.
- Tokyonight/GitHub theme setup with `tokyonight-night` as the active colorscheme.

## Layout

- `init.lua` loads the main `aleksandar` module.
- `lua/aleksandar/set.lua` contains editor options.
- `lua/aleksandar/remap.lua` contains keymaps.
- `lua/aleksandar/lazy_init.lua` bootstraps lazy.nvim.
- `lua/aleksandar/lazy/` contains plugin specs.

## Install

Place this config at:

```sh
~/.config/nvim
```

Open Neovim and lazy.nvim will bootstrap itself, then install the configured plugins.
