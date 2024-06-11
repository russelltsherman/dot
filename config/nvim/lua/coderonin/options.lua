-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------

-- Default options are not included
-- See: https://neoio/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

local opt = vim.opt   -- Set options (global/buffer/windows-scoped)

opt.clipboard = unnamedplus -- sync with system clipboard
opt.colorcolumn = "80" -- draw line lenght marker at 80 columns
opt.guicursor = "" -- disable cursor styling
opt.number = true -- show line numbers
opt.relativenumber = true -- line number relative to cursor
opt.shiftwidth = 0 -- default shiftwidth to tabstop
opt.showmatch = true -- highlight matching parenthesis
opt.signcolumn = "yes" -- always draw the sign column
opt.smartindent = true -- smart indent when starting a new line
opt.swapfile = false -- disable use of swapfile
opt.termguicolors = true -- enable 24-bit RGB colors
opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- specify undo file directory
opt.undofile = true -- enable undofile
