
local g = vim.g -- Global variables

g.mapleader = " "
g.maplocalleader = "\\"

local keymap = vim.keymap
-- keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc="return to netrw"})

keymap.set("n", '<leader>sv', '<C-w>v', {desc="split window vertically"})
keymap.set("n", '<leader>sh', '<C-w>s', {desc="split window horizontally"})
keymap.set("n", '<leader>sx', '<cmd>close<CR>', {desc="close current split"})
