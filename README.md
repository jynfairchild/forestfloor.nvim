# Forestfloor.nvim

A focused, single-variant Neovim colorscheme forked from [onedark.nvim](https://github.com/navarasu/onedark.nvim) with a semantic color system and comprehensive plugin support.

## Installation

### Lazy.nvim

```lua
{
  'jynfairchild/forestfloor.nvim',
  priority = 1000,
  config = function()
    require('forestfloor').setup({
      style = 'darker',
      term_colors = true,
    })
    require('forestfloor').load()
  end,
}
```

### Packer

```lua
use {
  'jynfairchild/forestfloor.nvim',
  config = function()
    require('forestfloor').setup({
      style = 'darker',
      term_colors = true,
      lualine = { transparent = false },
    })
    require('forestfloor').load()
  end
}
```

### Quick Usage

```lua
-- Lua
require('forestfloor').load()

-- Vimscript
vim.cmd("colorscheme forestfloor")

-- Lualine (forestfloor includes a built-in lualine theme)
require('lualine').setup({ options = { theme = 'forestfloor' } })
```

## Configuration

```lua
require('forestfloor').setup({
  style = 'darker',              -- single consolidated style
  transparent = false,            -- don't set background
  term_colors = true,             -- apply terminal ANSI colors
  ending_tildes = false,          -- show end-of-buffer tildes
  cmp_itemkind_reverse = false,   -- reverse completion item highlights

  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none',
  },

  lualine = {
    transparent = false,          -- center bar transparency
  },

  diagnostics = {
    darker = true,                -- darker diagnostic colors
    undercurl = true,             -- use undercurl for diagnostics
    background = true,            -- background on virtual text
  },

  colors = {},                    -- override palette colors
  highlights = {},                -- override highlight groups
})
```

### Overriding Colors

Override palette colors or individual highlight groups:

```lua
require('forestfloor').setup({
  colors = {
    keyword = "#FF0000",          -- change all keywords to red
    bg0 = "#000000",              -- pure black background
  },
  highlights = {
    Normal = { fg = "$keyword" }, -- $ prefix references palette keys
    Comment = { fg = "#888888", fmt = "italic" },
  },
})
```

## Project Structure

```
forestfloor.nvim/
├── colors/
│   └── forestfloor.lua                    # Neovim entry point (:colorscheme forestfloor)
│
├── lua/forestfloor/
│   ├── init.lua                       # Main API — setup() and load()
│   ├── palette.lua                    # Color definitions (~150 semantic keys)
│   ├── colors.lua                     # Color selection + user override merging
│   ├── highlights.lua                 # All highlight groups (~1000 lines)
│   ├── terminal.lua                   # Terminal ANSI color setup
│   ├── iterm.lua                      # iTerm palette (auto-generated)
│   └── util.lua                       # Color utilities (blend, darken, lighten)
│
├── lua/lualine/themes/
│   └── forestfloor.lua                    # Lualine statusline theme
│
├── lua/barbecue/theme/
│   └── forestfloor.lua                    # Barbecue breadcrumb theme
│
└── examples/
    └── plugin/
        └── forestfloor.lua                # Example configuration
```

### Architecture (3-layer color system)

1. **Palette** (`palette.lua`) — Raw hex color definitions using semantic names (`keyword`, `func`, `string`) instead of just color names (`red`, `blue`, `green`). This makes changing a color across all its usages a single-line edit.

2. **Colors** (`colors.lua`) — Merges the palette with any user overrides from `setup()`.

3. **Highlights** (`highlights.lua`) — Maps colors to Neovim highlight groups. Organized into sections:
   - `hl.common` — Core UI (Normal, Cursor, StatusLine, etc.)
   - `hl.syntax` — Vim syntax groups (Comment, String, Keyword, etc.)
   - `hl.treesitter` — Treesitter highlights (nvim 0.8+)
   - `hl.lsp` — LSP semantic tokens (nvim 0.9+)
   - `hl.plugins.*` — 40+ plugin integrations
   - `hl.langs.*` — Language-specific syntax (C, Lua, Markdown, etc.)

### Flow

```
:colorscheme forestfloor
  → colors/forestfloor.lua (clears module cache)
    → init.lua setup() (loads config)
    → init.lua colorscheme()
      → highlights.lua setup() (applies all highlight groups)
      → terminal.lua setup() (sets ANSI colors)
```

## Plugin Support

Includes highlight definitions for 40+ plugins:

| Category | Plugins |
|----------|---------|
| Completion | nvim-cmp, blink.cmp, coc.nvim |
| UI | telescope, nvim-tree, neo-tree, which-key, alpha, snacks |
| Git | gitsigns, diffview, fugitive |
| Tabs | barbar |
| Statusline | lualine (built-in theme) |
| Breadcrumbs | barbecue (built-in theme) |
| Indentation | indent-blankline |
| Diagnostics | LSP, ALE |
| Highlights | illuminate, todo-comments, rainbow-delimiters |
| Mini | mini.statusline, mini.tabline, mini.starter, mini.icons, etc. |

## Local Development

For developing and testing color changes without the commit/push/sync cycle:

### 1. Add the local repo to your runtimepath

Add this to the **top** of your `init.lua`, before the colorscheme is loaded:

```lua
vim.opt.runtimepath:prepend("/path/to/your/local/forestfloor.nvim")
```

Do **not** also load forestfloor through your package manager — it will create a duplicate copy that shadows your local changes.

### 2. Add a reload keybind

This keybind clears all caches and reloads the colorscheme + plugins instantly:

```lua
vim.keymap.set('n', '<leader>;t', function()
    -- Clear Lua module cache
    for k in pairs(package.loaded) do
        if k:match("^forestfloor") or k:match("^lualine") or k:match("^ibl") then
            package.loaded[k] = nil
        end
    end
    -- Reset vim.loader bytecode cache (Neovim 0.9+)
    if vim.loader and vim.loader.reset then
        vim.loader.reset()
    end
    -- Prepend local dev path
    vim.opt.runtimepath:prepend("/path/to/your/local/forestfloor.nvim")
    -- Re-apply colorscheme
    require('forestfloor').setup()
    require('forestfloor').colorscheme()
    -- Re-source plugin configs that cache colors
    -- vim.cmd('luafile ~/.config/nvim/after/plugin/lualine.lua')
    -- vim.cmd('luafile ~/.config/nvim/after/plugin/ibl.lua')
    print("forestfloor reloaded")
end, { desc = "reload forestfloor colorscheme" })
```

### 3. Workflow

1. Edit colors in `lua/forestfloor/palette.lua` or highlights in `lua/forestfloor/highlights.lua`
2. Save the file
3. Press your reload keybind
4. See changes instantly — no git commit, push, or package sync needed

### Important notes

- **`vim.loader`**: Neovim 0.9+ caches module file paths. You must call `vim.loader.reset()` or changes won't be picked up.
- **Package manager conflicts**: If your package manager (Packer, Lazy, etc.) copies the plugin to its own directory, that stale copy will shadow your local changes. Either remove the copy or don't manage forestfloor through the package manager during development.
- **Plugin caches**: Plugins like lualine and indent-blankline cache their highlight colors. Re-source their config files after reloading the colorscheme.

## Terminal Colors

Forestfloor applies terminal ANSI colors by default. If a `forestfloor.itermcolors` file is included, those 16 colors are used inside Neovim's terminal; otherwise a theme-aligned fallback mapping is applied.

To disable: `require('forestfloor').setup({ term_colors = false })`

## Notes

- This fork consolidates onedark's multiple styles into a single curated "darker" palette.
- Semantic color keys make surgical color changes safer — changing `keyword` in the palette updates all keyword-related highlights at once.
- Many plugin integrations are customized to match a specific visual reference used during development.
