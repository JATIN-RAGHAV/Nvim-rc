vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
})

return {
        "neovim/nvim-lspconfig",
        config = function()
                local lspconfig = require("lspconfig")

                lspconfig.clangd.setup()
                lspconfig.rust_analyzer.setup(require'lsps.rust-analyzer')
                lspconfig.lua_ls.setup(require'lsps.lua_ls')
                lspconfig.pylsp.setup(require'lsps.pylsp')
        end,
}
