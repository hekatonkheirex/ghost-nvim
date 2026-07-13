-- GHOST (Section 9) colorscheme.
-- Same token palette as kitty/ghost.conf, starship/ghost.toml, and
-- quickshell/themes/dark/config/Colors.qml. Keep these in sync by hand;
-- there's no shared generator across terminal/editor/shell.

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "ghost"

local p = {
  void = "#05080a",
  panel = "#0d1418",
  surface = "#12191d",
  surfaceHigh = "#1c262a",
  hairline = "#246a63",
  hairlineStrong = "#2f6f68",
  cyan = "#57d9cc",
  cyanBright = "#78dcd0",
  cyanDim = "#408a82",
  green = "#8fe38a",
  amber = "#e0a94a",
  danger = "#e0625a",
  text = "#cdeeea",
  muted = "#678984",
  mutedDim = "#5f7f7a",
}

local hl = vim.api.nvim_set_hl

-- Editor chrome
hl(0, "Normal", { fg = p.text, bg = p.void })
hl(0, "NormalFloat", { fg = p.text, bg = p.panel })
hl(0, "NormalNC", { fg = p.text, bg = p.void })
hl(0, "FloatBorder", { fg = p.hairlineStrong, bg = p.panel })
hl(0, "SignColumn", { bg = p.void })
hl(0, "LineNr", { fg = p.mutedDim, bg = p.void })
hl(0, "CursorLineNr", { fg = p.cyan, bg = p.surface, bold = true })
hl(0, "CursorLine", { bg = p.surface })
hl(0, "ColorColumn", { bg = p.surface })
hl(0, "VertSplit", { fg = p.hairline, bg = p.void })
hl(0, "WinSeparator", { fg = p.hairline, bg = p.void })
hl(0, "StatusLine", { fg = p.text, bg = p.panel })
hl(0, "StatusLineNC", { fg = p.muted, bg = p.panel })
hl(0, "TabLine", { fg = p.muted, bg = p.panel })
hl(0, "TabLineSel", { fg = p.void, bg = p.cyan, bold = true })
hl(0, "TabLineFill", { bg = p.void })
hl(0, "Pmenu", { fg = p.text, bg = p.panel })
hl(0, "PmenuSel", { fg = p.void, bg = p.cyan })
hl(0, "PmenuSbar", { bg = p.surface })
hl(0, "PmenuThumb", { bg = p.hairlineStrong })
hl(0, "Visual", { bg = p.surfaceHigh })
hl(0, "Search", { fg = p.void, bg = p.amber })
hl(0, "IncSearch", { fg = p.void, bg = p.cyanBright })
hl(0, "CurSearch", { fg = p.void, bg = p.cyanBright })
hl(0, "MatchParen", { fg = p.cyanBright, bold = true })
hl(0, "Whitespace", { fg = p.surfaceHigh })
hl(0, "NonText", { fg = p.surfaceHigh })
hl(0, "Folded", { fg = p.muted, bg = p.surface })
hl(0, "Title", { fg = p.cyan, bold = true })
hl(0, "Directory", { fg = p.cyan })

-- Syntax
hl(0, "Comment", { fg = p.mutedDim, italic = true })
hl(0, "Constant", { fg = p.amber })
hl(0, "String", { fg = p.green })
hl(0, "Character", { fg = p.green })
hl(0, "Number", { fg = p.amber })
hl(0, "Boolean", { fg = p.amber })
hl(0, "Float", { fg = p.amber })
hl(0, "Identifier", { fg = p.text })
hl(0, "Function", { fg = p.cyan, bold = true })
hl(0, "Statement", { fg = p.cyanBright, bold = true })
hl(0, "Conditional", { fg = p.cyanBright })
hl(0, "Repeat", { fg = p.cyanBright })
hl(0, "Keyword", { fg = p.cyanBright })
hl(0, "Exception", { fg = p.danger })
hl(0, "Operator", { fg = p.text })
hl(0, "PreProc", { fg = p.amber })
hl(0, "Type", { fg = p.cyanDim, bold = true })
hl(0, "Special", { fg = p.amber })
hl(0, "Underlined", { fg = p.cyan, underline = true })
hl(0, "Error", { fg = p.danger, bold = true })
hl(0, "Todo", { fg = p.void, bg = p.amber, bold = true })

-- Diagnostics
hl(0, "DiagnosticError", { fg = p.danger })
hl(0, "DiagnosticWarn", { fg = p.amber })
hl(0, "DiagnosticInfo", { fg = p.cyan })
hl(0, "DiagnosticHint", { fg = p.cyanDim })
hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = p.danger })
hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = p.amber })
hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = p.cyan })
hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = p.cyanDim })

-- Diff / gitsigns
hl(0, "DiffAdd", { fg = p.green, bg = p.void })
hl(0, "DiffChange", { fg = p.amber, bg = p.void })
hl(0, "DiffDelete", { fg = p.danger, bg = p.void })
hl(0, "DiffText", { fg = p.cyanBright, bg = p.surface })
hl(0, "GitSignsAdd", { fg = p.green })
hl(0, "GitSignsChange", { fg = p.amber })
hl(0, "GitSignsDelete", { fg = p.danger })

-- Treesitter (@-groups; fall back to legacy links above for anything unset)
hl(0, "@comment", { link = "Comment" })
hl(0, "@string", { link = "String" })
hl(0, "@number", { link = "Number" })
hl(0, "@boolean", { link = "Boolean" })
hl(0, "@function", { link = "Function" })
hl(0, "@function.call", { fg = p.cyan })
hl(0, "@keyword", { link = "Keyword" })
hl(0, "@keyword.function", { fg = p.cyanBright })
hl(0, "@keyword.return", { fg = p.danger })
hl(0, "@conditional", { link = "Conditional" })
hl(0, "@repeat", { link = "Repeat" })
hl(0, "@variable", { fg = p.text })
hl(0, "@variable.builtin", { fg = p.amber, italic = true })
hl(0, "@parameter", { fg = p.text, italic = true })
hl(0, "@type", { link = "Type" })
hl(0, "@type.builtin", { fg = p.cyanDim })
hl(0, "@constant", { link = "Constant" })
hl(0, "@constant.builtin", { fg = p.amber, bold = true })
hl(0, "@property", { fg = p.text })
hl(0, "@field", { fg = p.text })
hl(0, "@punctuation.delimiter", { fg = p.muted })
hl(0, "@punctuation.bracket", { fg = p.muted })
hl(0, "@tag", { fg = p.cyanBright })
hl(0, "@tag.attribute", { fg = p.amber })
