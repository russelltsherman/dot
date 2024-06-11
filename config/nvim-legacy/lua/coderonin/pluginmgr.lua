
-- [[ Install `lazy.nvim` plugin manager ]]
--  See `https://github.com/folke/lazy.nvim`
--  See `:help lazy.nvim.txt`

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system { 
    'git', 
    'clone', 
    '--filter=blob:none', 
    'https://github.com/folke/lazy.nvim.git', 
    '--branch=stable',  
    lazypath 
  }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("coderonin.plugins", {
  checker = {
    enabled = true, -- enable plugin update checking
    notify = false, -- plugin update notification shown in status bar
  },
  change_detection = { notify = false },
})
