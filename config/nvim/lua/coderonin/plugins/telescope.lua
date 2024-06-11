return {
  -- provided search, fuzzy finding, etc
  -- https://github.com/nvim-telescope/telescope.nvim
  {
    "nvim-telescope/telescope.nvim", 
    branch = "0.1.x",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim", 
        build="make"
      },
      { -- https://github.com/nvim-telescope/telescope-us-select.nvim
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
          require("telescope").setup({
            extensions = {
              ["ui-select"] = {
                require("telescope.themes").get_dropdown {
                }
              }
            }
          })
          require("telescope").load_extension("ui-select")
        end
      },
      { -- https://github.com/nvim-tree/nvim-web-devicons
        -- Useful for getting pretty icons, but requires a Nerd Font. 
        'nvim-tree/nvim-web-devicons', 
        enabled = vim.g.have_nerd_font 
      },
      {"folke/todo-comments.nvim"},
    },
    init = function()
      require("telescope").load_extension("fzf")

      -- set keymaps
      vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
      vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
      vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
      vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
      vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    end,
    opts = {
      defaults ={
        path_display = { "smart" },
        -- mappings = {
        --   i = {
        --     ["<C-k>"] = require("telescope.actions").move_selection_previous, --move to previous result
        --     ["<C-j>"] = require("telescope.actions").move_selection_next, --move to next result
        --     ["<C-q>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist, --move to previous result
        --   },
        -- },
      },
    },
  },
  
}
