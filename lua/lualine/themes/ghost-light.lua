-- lualine theme matching colors/ghost-light.lua. lualine's theme = "auto"
-- looks up lualine/themes/<vim.g.colors_name>.lua, so this is picked up
-- automatically.

local p = {
  panel = "#ffffff",
  surface = "#f6faf9",
  cyan = "#006d67",
  cyanBright = "#005550",
  green = "#287a3a",
  amber = "#875400",
  danger = "#b3261e",
  text = "#10201f",
  muted = "#4f6260",
}

local function mode(bg)
  return {
    a = { fg = p.panel, bg = bg, gui = "bold" },
    b = { fg = p.text, bg = p.surface },
    c = { fg = p.muted, bg = p.panel },
  }
end

return {
  normal = mode(p.cyan),
  insert = mode(p.green),
  visual = mode(p.amber),
  replace = mode(p.danger),
  command = mode(p.cyanBright),
  inactive = {
    a = { fg = p.muted, bg = p.panel },
    b = { fg = p.muted, bg = p.panel },
    c = { fg = p.muted, bg = p.panel },
  },
}
