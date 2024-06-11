-- Auto Session takes advantage of Neovim's existing 
-- session management capabilities to provide seamless 
-- automatic session management.
-- https://github.com/rmagatti/auto-session
return {
  "rmagatti/auto-session",
  init = function()
    vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
    vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
  end,
  opts = {
    auto_restore_enabled = false,
    auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
  },
}
