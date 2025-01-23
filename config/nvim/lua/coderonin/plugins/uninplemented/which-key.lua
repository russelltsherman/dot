return {
  -- WhichKey is a plugin that displays a popup with possible 
  -- key bindings of the command you started typing.
  -- https://github.com/folke/which-key.nvim
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
    -- config = function() -- This is the function that runs, AFTER loading
    --   require('which-key').setup()
  
    --   -- Document existing key chains
    --   require('which-key').register {
    --     ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
    --     ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
    --     ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
    --     ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
    --     ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
    --     ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
    --     ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
    --   }
    --   -- visual mode
    --   require('which-key').register({
    --     ['<leader>h'] = { 'Git [H]unk' },
    --   }, { mode = 'v' })
    -- end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }
}
