-- Plugin highlight groups shared by colors/ghost.lua and colors/ghost-light.lua.
-- Takes the caller's palette table so dark/light stay in sync by construction
-- instead of by hand-copying ~200 lines twice.

local M = {}

function M.setup(p)
  local hl = vim.api.nvim_set_hl

  -- telescope.nvim
  hl(0, "TelescopeNormal", { fg = p.text, bg = p.panel })
  hl(0, "TelescopeBorder", { fg = p.hairlineStrong, bg = p.panel })
  hl(0, "TelescopePromptNormal", { fg = p.text, bg = p.surface })
  hl(0, "TelescopePromptBorder", { fg = p.hairlineStrong, bg = p.surface })
  hl(0, "TelescopePromptTitle", { fg = p.void, bg = p.cyan, bold = true })
  hl(0, "TelescopePreviewTitle", { fg = p.void, bg = p.green, bold = true })
  hl(0, "TelescopeResultsTitle", { fg = p.void, bg = p.cyan, bold = true })
  hl(0, "TelescopeSelection", { fg = p.text, bg = p.surfaceHigh, bold = true })
  hl(0, "TelescopeMatching", { fg = p.cyanBright, bold = true })

  -- nvim-tree.lua
  hl(0, "NvimTreeNormal", { fg = p.text, bg = p.void })
  hl(0, "NvimTreeNormalNC", { fg = p.text, bg = p.void })
  hl(0, "NvimTreeWinSeparator", { fg = p.hairline, bg = p.void })
  hl(0, "NvimTreeFolderIcon", { fg = p.cyan })
  hl(0, "NvimTreeFolderName", { fg = p.text })
  hl(0, "NvimTreeOpenedFolderName", { fg = p.cyanBright, bold = true })
  hl(0, "NvimTreeRootFolder", { fg = p.cyanBright, bold = true })
  hl(0, "NvimTreeIndentMarker", { fg = p.hairline })
  hl(0, "NvimTreeGitDirty", { fg = p.amber })
  hl(0, "NvimTreeGitNew", { fg = p.green })
  hl(0, "NvimTreeGitDeleted", { fg = p.danger })
  hl(0, "NvimTreeSpecialFile", { fg = p.amber, underline = true })
  hl(0, "NvimTreeExecFile", { fg = p.green })
  hl(0, "NvimTreeImageFile", { fg = p.text })

  -- bufferline.nvim
  hl(0, "BufferLineFill", { bg = p.void })
  hl(0, "BufferLineBackground", { fg = p.muted, bg = p.panel })
  hl(0, "BufferLineBufferSelected", { fg = p.text, bg = p.void, bold = true })
  hl(0, "BufferLineBufferVisible", { fg = p.muted, bg = p.panel })
  hl(0, "BufferLineIndicatorSelected", { fg = p.cyan, bg = p.void })
  hl(0, "BufferLineSeparator", { fg = p.hairline, bg = p.panel })
  hl(0, "BufferLineModified", { fg = p.amber, bg = p.panel })
  hl(0, "BufferLineModifiedSelected", { fg = p.amber, bg = p.void })

  -- which-key.nvim
  hl(0, "WhichKey", { fg = p.cyan, bold = true })
  hl(0, "WhichKeyGroup", { fg = p.amber })
  hl(0, "WhichKeyDesc", { fg = p.text })
  hl(0, "WhichKeySeparator", { fg = p.muted })
  hl(0, "WhichKeyFloat", { bg = p.panel })
  hl(0, "WhichKeyBorder", { fg = p.hairlineStrong, bg = p.panel })

  -- trouble.nvim
  hl(0, "TroubleNormal", { fg = p.text, bg = p.panel })
  hl(0, "TroubleText", { fg = p.text })
  hl(0, "TroubleCount", { fg = p.cyan, bold = true })
  hl(0, "TroubleIndent", { fg = p.hairline })

  -- noice.nvim
  hl(0, "NoiceCmdlinePopup", { fg = p.text, bg = p.panel })
  hl(0, "NoiceCmdlinePopupBorder", { fg = p.hairlineStrong, bg = p.panel })
  hl(0, "NoiceMini", { fg = p.text, bg = p.surface })

  -- blink.cmp
  hl(0, "BlinkCmpMenu", { fg = p.text, bg = p.panel })
  hl(0, "BlinkCmpMenuBorder", { fg = p.hairlineStrong, bg = p.panel })
  hl(0, "BlinkCmpMenuSelection", { fg = p.void, bg = p.cyan })
  hl(0, "BlinkCmpDoc", { fg = p.text, bg = p.panel })
  hl(0, "BlinkCmpDocBorder", { fg = p.hairlineStrong, bg = p.panel })
  hl(0, "BlinkCmpLabelMatch", { fg = p.cyanBright, bold = true })
  hl(0, "BlinkCmpKind", { fg = p.cyanDim })

  -- snacks.nvim
  hl(0, "SnacksNormal", { fg = p.text, bg = p.void })
  hl(0, "SnacksDashboardTitle", { fg = p.cyan, bold = true })
  hl(0, "SnacksDashboardHeader", { fg = p.cyanBright })
  hl(0, "SnacksDashboardFooter", { fg = p.muted, italic = true })
  hl(0, "SnacksDashboardKey", { fg = p.amber })
  hl(0, "SnacksDashboardDesc", { fg = p.text })
  hl(0, "SnacksIndent", { fg = p.surfaceHigh })
  hl(0, "SnacksIndentScope", { fg = p.hairlineStrong })

  -- flash.nvim
  hl(0, "FlashLabel", { fg = p.void, bg = p.amber, bold = true })
  hl(0, "FlashMatch", { fg = p.cyanBright, bold = true })
  hl(0, "FlashCurrent", { fg = p.void, bg = p.cyanBright, bold = true })
  hl(0, "FlashBackdrop", { fg = p.muted })

  -- todo-comments.nvim
  local todo = {
    FIX = p.danger,
    TODO = p.cyan,
    HACK = p.amber,
    WARN = p.amber,
    PERF = p.cyanDim,
    NOTE = p.green,
    TEST = p.cyanBright,
  }
  for kw, color in pairs(todo) do
    hl(0, "TodoBg" .. kw, { fg = p.void, bg = color, bold = true })
    hl(0, "TodoFg" .. kw, { fg = color })
    hl(0, "TodoSign" .. kw, { fg = color })
  end

  -- rainbow-delimiters.nvim
  hl(0, "RainbowDelimiterRed", { fg = p.danger })
  hl(0, "RainbowDelimiterYellow", { fg = p.amber })
  hl(0, "RainbowDelimiterBlue", { fg = p.cyan })
  hl(0, "RainbowDelimiterOrange", { fg = p.amber })
  hl(0, "RainbowDelimiterGreen", { fg = p.green })
  hl(0, "RainbowDelimiterViolet", { fg = p.cyanBright })
  hl(0, "RainbowDelimiterCyan", { fg = p.cyanDim })

  -- render-markdown.nvim
  hl(0, "RenderMarkdownH1", { fg = p.cyan, bold = true })
  hl(0, "RenderMarkdownH2", { fg = p.cyanBright, bold = true })
  hl(0, "RenderMarkdownH3", { fg = p.green, bold = true })
  hl(0, "RenderMarkdownH4", { fg = p.amber, bold = true })
  hl(0, "RenderMarkdownH5", { fg = p.cyanDim, bold = true })
  hl(0, "RenderMarkdownH6", { fg = p.muted, bold = true })
  hl(0, "RenderMarkdownCode", { bg = p.surface })
  hl(0, "RenderMarkdownCodeInline", { fg = p.amber, bg = p.surface })
  hl(0, "RenderMarkdownBullet", { fg = p.cyan })
  hl(0, "RenderMarkdownQuote", { fg = p.muted, italic = true })
  hl(0, "RenderMarkdownLink", { fg = p.cyan, underline = true })

  -- gitsigns.nvim extended groups (base Add/Change/Delete set by caller)
  hl(0, "GitSignsAddNr", { fg = p.green })
  hl(0, "GitSignsChangeNr", { fg = p.amber })
  hl(0, "GitSignsDeleteNr", { fg = p.danger })
  hl(0, "GitSignsCurrentLineBlame", { fg = p.muted, italic = true })
  hl(0, "GitSignsAddPreview", { fg = p.green, bg = p.surface })
  hl(0, "GitSignsDeletePreview", { fg = p.danger, bg = p.surface })
end

return M
