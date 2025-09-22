vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.inccommand = "split"
vim.opt.guicursor = "n:block"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 8
vim.opt.expandtab = true
vim.opt.virtualedit = 'block'
vim.opt.termguicolors = true
vim.opt.ignorecase = true
vim.opt.scrolloff = 8
vim.g.undofile = true
vim.g.undodir = vim.fn.stdpath('state') .. '/undo'
vim.g.netrw_banner=0
vim.api.nvim_set_hl(0, 'Normal', { ctermbg = 'NONE'})
vim.api.nvim_set_hl(0, 'NormalNC', { ctermbg = 'NONE'})
vim.api.nvim_set_hl(0, 'NormalFloat', { ctermbg = 'NONE'})
vim.api.nvim_set_hl(0, 'Pmenu', { ctermbg = 'NONE'})
vim.api.nvim_create_autocmd("FileType",{
	pattern="netrw",
	callback = function ()
		vim.opt_local.relativenumber = true
	end
})
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.HINT] = "",
      [vim.diagnostic.severity.INFO] = "",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
      [vim.diagnostic.severity.HINT] = "DiagnosticHint",
      [vim.diagnostic.severity.INFO] = "DiagnosticInfo",
    },
  },
})
