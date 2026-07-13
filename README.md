# Ghost Neovim Colorscheme

A Section 9 / *Ghost in the Shell*-inspired colorscheme for Neovim, using the same
fixed token palette as the rest of the GHOST desktop visual system (kitty, starship,
niri, Quickshell, GTK, Kvantum). Ships dark (`ghost`) and light (`ghost-light`) variants.

## Palette — dark (`ghost`)

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

## Palette — light (`ghost-light`)

Matched to `kitty/ghost-light.conf` and `quickshell/themes/light/config/Colors.qml`.

| token | value | role |
|---|---|---|
| `void` | `#f3f7f6` | background |
| `panel` / `surface` | `#ffffff` / `#f6faf9` | floats, statusline, popups |
| `cyan` | `#006d67` | primary accent (functions, keywords, cursor) |
| `cyanBright` | `#005550` | emphasis / selection |
| `cyanDim` | `#3f6662` | types, hints |
| `green` | `#287a3a` | strings, additions |
| `amber` | `#875400` | constants, warnings, changes |
| `danger` | `#b3261e` | errors, deletions |
| `text` | `#10201f` | primary foreground |
| `muted` / `mutedDim` | `#4f6260` / `#889694` | comments, inactive UI |

Fixed palettes, no wallpaper/generator dependency — same design constraint as the sibling
`ghost-theme` (GTK) and `ghost-kvantum` (Qt/Kvantum) projects: deliberate "void" aesthetics,
not a dynamic scheme. Pick dark or light explicitly; there's no auto-switching.

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
:colorscheme ghost-light
```

## Coverage

Core editor groups, diagnostics, diff/gitsigns, and a Treesitter `@`-group baseline
(`colors/ghost.lua`, `colors/ghost-light.lua`). Plugin-specific highlight groups (telescope,
which-key, etc.) aren't themed individually yet — most inherit sane defaults from the groups
above since they link to `Normal`/`CursorLine`/`Pmenu`/diagnostics rather than hardcoding
colors. Add plugin-specific groups here as gaps are found, following the same token table
rather than new hex literals.

## Structure

- `colors/ghost.lua` — dark variant.
- `colors/ghost-light.lua` — light variant, same token roles, palette matched to the light
  side of the rest of the GHOST desktop system.

No `lua/ghost/` module split, no `setup()` options — each variant is a self-contained
`colors/*.lua` file, same pattern as kitty's separate `ghost.conf` / `ghost-light.conf`.
