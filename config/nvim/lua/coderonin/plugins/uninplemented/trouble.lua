-- A pretty list for showing diagnostics, references, telescope results, 
-- quickfix and location lists to help you solve all the trouble your code is causing.
-- https://github.com/folke/trouble.nvim
return {
  "folke/trouble.nvim",
  dependencies = { 
    "nvim-tree/nvim-web-devicons",
  },
  init = function()
    opts = {
      skip_groups = true, jump = true,
    }

    vim.keymap.set("n", "<leader>tt", function()
      require("trouble").toggle(opts)
    end)

    vim.keymap.set("n", "<leader>tn", function()
      require("trouble").next(opts)
    end)

    vim.keymap.set("n", "<leader>tp", function()
      require("trouble").previous(opts)
    end)
  end,
  opts = {
    icons = false
  },
}
