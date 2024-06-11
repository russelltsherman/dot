return {
  [
    -- https://www.github.com/goolord/alpha-nvim
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
  
      dashboard.section.header.val = {
        [[                                                      ]],
        [[  ███╗   ███╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
        [[  ████╗ ████║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
        [[  ██╔████╔██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
        [[  ██║╚██╔╝██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
        [[  ██║ ╚═╝ ██║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
        [[  ╚═╝     ╚═╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
        [[                                                      ]],
      }
  
      dashboard.section.buttons.val = {
        dashboard.button("e", " > New File", "<cmd>ene<CR>"),
        dashboard.button("<leader>ee", " > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
        dashboard.button("<leader>ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
        dashboard.button("<leader>fs", " > Find Word", "<cmd>Telescope live_grep<CR>"),
        dashboard.button("<leader>wr", "󰁯 > Restore Session For CWD", "<cmd>SessionRestore<CR>"),
        dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
      }
   
      alpha.setup(dashboard.opts)
  
    end,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "VimEnter",
    init = function()
      -- Disable folding on alpha buffer
      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end
  ]
}
