# Ghost Neovim Colorscheme

A Section 9 / *Ghost in the Shell*-inspired dark colorscheme for Neovim, using the same
fixed token palette as the rest of the GHOST desktop visual system (kitty, starship,
niri, Quickshell, GTK, Kvantum).

## Palette

| token | value | role |
|---|---|---|
| `void` | `#05080a` | background |
| `panel` / `surface` | `#0d1418` / `#12191d` | floats, statusline, popups |
| `cyan` | `#57d9cc` | primary accent (functions, keywords, cursor) |
| `cyanBright` | `#78dcd0` | emphasis / selection |
| `cyanDim` | `#408a82` | types, hints |
| `green` | `#8fe38a` | strings, additions |
| `amber` | `#e0a94a` | constants, warnings, changes |
| `danger` | `#e0625a` | errors, deletions |
| `text` | `#cdeeea` | primary foreground |
| `muted` / `mutedDim` | `#678984` / `#5f7f7a` | comments, inactive UI |

Fixed palette, no light variant, no wallpaper/generator dependency — same design constraint
as the sibling `ghost-theme` (GTK) and `ghost-kvantum` (Qt/Kvantum) projects: one deliberate
"void" aesthetic, not a dynamic scheme.

## Install (lazy.nvim / LazyVim)

```lua
{
  "hekatonkheirex/ghost-nvim",
  lazy = false,
  priority = 1000,
}
```

```lua
-- LazyVim
return {
  { "LazyVim/LazyVim", opts = { colorscheme = "ghost" } },
}
```

Or manually:

```vim
:colorscheme ghost
```

## Coverage

Core editor groups, diagnostics, diff/gitsigns, and a Treesitter `@`-group baseline
(`colors/ghost.lua`). Plugin-specific highlight groups (telescope, which-key, etc.) aren't
themed individually yet — most inherit sane defaults from the groups above since they link
to `Normal`/`CursorLine`/`Pmenu`/diagnostics rather than hardcoding colors. Add plugin-specific
groups here as gaps are found, following the same token table rather than new hex literals.

## Structure

- `colors/ghost.lua` — the colorscheme. No `lua/ghost/` module split (no dark/light variants,
  no `setup()` options) — add one only if a real second variant or configurable option shows up.
