local status, transparent = pcall(require, "transparent")
if not status then
  return
end

transparent.setup({
  extra_groups = { -- table/string: additional groups that should be cleared
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",

    "IndentBlanklineChar",

    -- make floating windows transparent
    "LspFloatWinNormal",
    "Normal",
    "NormalFloat",
    "FloatBorder",
    "TelescopeNormal",
    "TelescopeBorder",
    "TelescopePromptBorder",
    "SagaBorder",
    "SagaNormal",
    "NvimTreeNormal", -- NvimTree
  },
})
