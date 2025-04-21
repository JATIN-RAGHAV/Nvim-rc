vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  severity_sort = true,
  float = {
          border = "rounded",
          focusable = true,
          source = true,
  },
})

local _open_floating_preview = vim.lsp.util.open_floating_preview;
vim.lsp.util.open_floating_preview = function(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or "rounded"      -- You can also use "single", "double", etc.
        opts.max_width = opts.max_width or 80
        opts.max_height = opts.max_height or 20
        return _open_floating_preview(contents, syntax, opts, ...)
end
return {
        "neovim/nvim-lspconfig",
        config = function()
                local lspconfig = require("lspconfig")

                lspconfig.clangd.setup({})
                lspconfig.rust_analyzer.setup(require'lsps.rust-analyzer')
                lspconfig.lua_ls.setup(require'lsps.lua_ls')
                lspconfig.pylsp.setup(require'lsps.pylsp')
        end,
}
