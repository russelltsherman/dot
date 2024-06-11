-- Tabs, as understood by any other editor.
-- barbar.nvim is a tabline plugin with re-orderable, auto-sizing, clickable tabs, icons, 
-- nice highlighting, sort-by commands and a magic jump-to-buffer mode. 
-- Plus the tab names are made unique when two filenames match.

-- In jump-to-buffer mode, tabs display a target letter instead of their icon. 
-- Jump to any buffer by simply typing their target letter. 
-- Even better, the target letter stays constant for the lifetime of the buffer, 
-- so if you're working with a set of files you can even type the letter ahead from memory.
-- https://github.com/romgrk/barbar.nvim
return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- patched fonts support 
    "lewis6991/gitsigns.nvim" -- display git status
  },
  init = function() 
    vim.g.barbar_auto_setup = false 

    -- Move to previous/next
    vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>")
    vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>")

    -- Re-order to previous/next
    vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>")
    vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>")

    -- Goto buffer in position...
    vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>")
    vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>")
    vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>")
    vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>")
    vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>")
    vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>")
    vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>")
    vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>")
    vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>")
    vim.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>")

    -- Pin/unpin buffer
    vim.keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>")

    -- Close buffer
    vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>")
    vim.keymap.set("n", "<A-b>", "<Cmd>BufferCloseAllButCurrent<CR>")
    
  end,
  opts = {
    clickable = true, -- Enables/disables clickable tabs
    tabpages = false, -- Enable/disables current/total tabpages indicator (top right corner)
    insert_at_end = true,
    icons = {
      button = "",
      buffer_index = true,
      filetype = {enabled = true},
      visible = {modified = {buffer_number = false}},
      gitsigns = {
        added = {enabled = true, icon = "+"},
        changed = {enabled = true, icon = "~"},
        deleted = {enabled = true, icon = "-"}
      }
    }
  },
}
