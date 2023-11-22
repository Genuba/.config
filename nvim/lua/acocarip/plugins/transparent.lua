local status, transparent = pcall(require, "transparent")
if not status then
  return
end

transparent.clear_prefix("winbar")

transparent.setup({
  extra_groups = {
    "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    "NvimTreeNormal", -- NvimTree
  },
})
