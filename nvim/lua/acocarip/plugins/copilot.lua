return {
  "github/copilot.vim",
  config = function()
    -- Example configuration for copilot.vim (you can modify this according to your preferences)
    vim.g.copilot_no_tab_map = false -- Disable the default tab mapping
    vim.g.copilot_assume_mapped = true -- Automatically assume Copilot is ready
    vim.g.copilot_filetypes = { -- Enable Copilot for specific file types
      lua = true,
      python = true,
      javascript = true,
      -- Add other file types here as necessary
    }
  end,
}
