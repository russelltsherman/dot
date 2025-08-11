-- highlight and search for todo comments 
-- like TODO, HACK, BUG in your code base.
-- https://github.com/folke/todo-comments.nvim
return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { 
    "nvim-lua/plenary.nvim" 
  },
  init = function()
    vim.keymap.set("n", "]t", function()
      require("todo-comments").jump_next()
    end, { desc = "Next todo comment" })

    vim.keymap.set("n", "[t", function()
      require("todo-comments").jump_prev()
    end, { desc = "Previous todo comment" })
  end,
  opts = {},
}
