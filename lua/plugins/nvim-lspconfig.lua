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
        opts.border = opts.border or "double"
        opts.max_width = opts.max_width or 80
        opts.max_height = opts.max_height or 20
        return _open_floating_preview(contents, syntax, opts, ...)
end
return {
        "neovim/nvim-lspconfig",
        config = function()

                vim.lsp.config('lua_ls',require'lsps.lua_ls')
                vim.lsp.config('ts_ls',require 'lsps.ts_ls')
                vim.lsp.enable('pylsp')
                vim.lsp.enable('lua_ls')
                vim.lsp.enable('rust_analyzer')

                vim.keymap.set('n', '<C-]>', vim.lsp.buf.definition, {desc='Goto definition'});
                vim.keymap.set('n', '<S-l>', vim.lsp.buf.hover, {desc='Define the keyword under cursor'})
        end,
}
