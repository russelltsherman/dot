-- provides color scheme
-- https://github.com/ellisonleao/gruvbox.nvim
function ColorMyPencils(color)
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  --  {
  --    "rebelot/kanagawa.nvim",
  --    init = function()
  --      ColorMyPencils("kanagawa-wave")
  --    end,
  --  },
  {
    "ellisonleao/gruvbox.nvim",
    init = function()
      ColorMyPencils("gruvbox")
    end,
  }
}
