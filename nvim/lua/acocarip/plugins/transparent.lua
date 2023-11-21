local status, transparent = pcall(require, "transparent")
if not status then
  return
end

transparent.setup({
  extra_groups = { -- table/string: additional groups that should be cleared
    "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    "NvimTreeNormal", -- NvimTree
  },
})
