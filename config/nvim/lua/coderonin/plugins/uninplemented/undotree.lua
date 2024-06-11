-- Undotree visualizes the undo history and makes it easy to browse 
-- and switch between different undo branches.
-- https://github.com/mbbill/undotree
return {
  "mbbill/undotree",
  config = function() 
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end,
  opts = {},
}

