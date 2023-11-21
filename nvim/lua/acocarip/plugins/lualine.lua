-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine nightfly theme
local lualine_nightfly = require("lualine.themes.nightfly")

-- new colors for theme
local colors = {
  darkgray = "#16161d",
  gray = "#727169",
  innerbg = nil,
  outerbg = "#16161D",
  normal = "#7e9cd8",
  insert = "#98bb6c",
  visual = "#ffa066",
  replace = "#e46876",
  command = "#e6c384",
}

-- change nightlfy theme colors

lualine_nightfly.inactive = {
  a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
  b = { fg = colors.gray, bg = colors.outerbg },
  c = { fg = colors.gray, bg = colors.innerbg },
}
lualine_nightfly.replace = {
  a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
  b = { fg = colors.gray, bg = colors.outerbg },
  c = { fg = colors.gray, bg = colors.innerbg },
}
lualine_nightfly.normal = {
  a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
  b = { fg = colors.gray, bg = colors.outerbg },
  c = { fg = colors.gray, bg = colors.innerbg },
}
lualine_nightfly.insert = {
  a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
  b = { fg = colors.gray, bg = colors.outerbg },
  c = { fg = colors.gray, bg = colors.innerbg },
}
lualine_nightfly.visual = {
  a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
  b = { fg = colors.gray, bg = colors.outerbg },
  c = { fg = colors.gray, bg = colors.innerbg },
}
lualine_nightfly.command = {
  a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
  b = { fg = colors.gray, bg = colors.outerbg },
  c = { fg = colors.gray, bg = colors.innerbg },
}

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_nightfly,
  },
})
