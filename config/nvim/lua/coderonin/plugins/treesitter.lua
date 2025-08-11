return {
  -- The goal of nvim-treesitter is both to provide a simple and easy way to use the 
  -- interface for tree-sitter in Neovim and to provide some basic functionality 
  -- such as highlighting based on it:  
  -- https://github.com/nvim-treesitter/nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      
      local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      treesitter_parser_config.templ = {
        install_info = {
          url = "https://github.com/vrischmann/tree-sitter-templ.git",
          files = {"src/parser.c", "src/scanner.c"},
          branch = "master",
        },
      }
      vim.treesitter.language.register("templ", "templ")
    end,
    event = { "BufReadPre", "BufNewFile" },
    init = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
    opts = {
      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
      auto_install = true,
      -- A list of parser names, or "all"
      ensure_installed = { 
        "c", "lua", "vim", "vimdoc", "query"
      },
      highlight = { 
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = { "markdown" },
        -- `false` will disable the whole extension
        enable = true 
      },
      indent = {
        enable = true
      },
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = true,
    }
  }
}
