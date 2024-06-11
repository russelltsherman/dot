return {
  -- Use Neovim as a language server to inject LSP diagnostics, 
  -- code actions, and more via Lua.
  -- https://github.com/nvimtools/none-ls.nvim
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require("null-ls").setup({
        debug = true,
        sources = {
          require("null-ls").builtins.formatting.gofumpt, -- stricter go fmt - https://github.com/mvdan/gofumpt
          require("null-ls").builtins.formatting.goimports, -- autoupdate go imports
          require("null-ls").builtins.formatting.golines, -- shorten long lines of code
          require("null-ls").builtins.diagnostics.golangci_lint, -- https://golangci-lint.run/
        },
      })
    end,
  }
}
