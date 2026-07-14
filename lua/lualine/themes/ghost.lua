-- lualine theme matching colors/ghost.lua. lualine's theme = "auto" looks up
-- lualine/themes/<vim.g.colors_name>.lua, so this is picked up automatically.

local p = {
  void = "#05080a",
  panel = "#0d1418",
  surface = "#12191d",
  cyan = "#57d9cc",
  cyanBright = "#78dcd0",
  green = "#8fe38a",
  amber = "#e0a94a",
  danger = "#e0625a",
  text = "#cdeeea",
  muted = "#678984",
}

local function mode(bg)
  return {
    a = { fg = p.void, bg = bg, gui = "bold" },
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
