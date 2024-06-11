-- WhichKey is a plugin that displays a popup with possible 
-- key bindings of the command you started typing.
-- https://github.com/folke/which-key.nvim
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
