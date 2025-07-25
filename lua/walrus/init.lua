require 'walrus.options'
require 'walrus.remaps'
require 'walrus.cp'

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "tmux.conf", ".tmux.conf" },
  callback = function()
    vim.lsp.start({
      name = "tmux",
      cmd = { "tmux-language-server" }
    })
  end,
})
