-- A completion engine plugin for neovim written in Lua. 
-- Completion sources are installed from external repositories and "sourced".
-- https://github.com/hrsh7th/nvim-cmp

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },
  init = function()
  end,
  opts = {},
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          -- vim.fn["vsnip#anonymous"](args.body) -- for `vsnip` users.
          require('luasnip').lsp_expand(args.body) -- for `luasnip` users.
          -- require('snippy').expand_snippet(args.body) -- for `snippy` users.
          -- vim.fn["Ultisnips#Anon"](args.body) -- for `ultisnips` users.
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        {name = 'nvim_lsp'},
        -- {name='vsnip'}, -- for vsnip users
        {name='luasnip'}, -- for luasnip users
        -- {name='ultisnips'}, -- for ultisnips users
        -- {name='snippy'}, -- for snippy users
      },{
        {name='buffer'}
      })
    })
  end
}
