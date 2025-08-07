vim.keymap.set('n', '<leader>sex', function() print"sex" end, {desc="Prints Sex"})
vim.keymap.set('n', '<leader>pv', function() vim.cmd.Ex() end)

vim.keymap.set('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true,desc="Page half down"})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true, desc="Page half up"})

vim.keymap.set('n', '<leader>bl', vim.cmd.ls,{desc="List the buffers"})
vim.keymap.set('n', '<leader>bn', vim.cmd.bnext,{desc="Go to the next buffer"})
vim.keymap.set('n', '<leader>bp', vim.cmd.bprevious,{desc="Go to the previous buffer"})

vim.keymap.set('n', '<leader>gj', '<C-w>j', {noremap = true, silent = true, desc = 'Activates the window below'})
vim.keymap.set('n', '<leader>gk', '<C-w>k', {noremap = true, silent = true, desc = 'Activates the window above'})
vim.keymap.set('n', '<leader>gh', '<C-w>h', {noremap = true, silent = true, desc = 'Activates the window on left'})
vim.keymap.set('n', '<leader>gl', '<C-w>l', {noremap = true, silent = true, desc = 'Activates the window on right'})

vim.keymap.set('n', '<leader>fu', '<C-w>99+', {noremap = true, silent = true, desc = 'Maximise the top of the current window'})
vim.keymap.set('n', '<leader>fd', '<C-w>99_', {noremap = true, silent = true, desc = 'Maximise the bottom of the current window'})

vim.keymap.set('n','<leader>pp', function()
        local lines = table.concat(vim.api.nvim_buf_get_lines(0,0,-1,false),'\n')
        local ns_id = vim.api.nvim_create_namespace("my_highlight_ns")
        vim.api.nvim_buf_add_highlight(0, ns_id, "String", 5, 0, 10)
        vim.print(lines)
end,{desc="Shows the magical powers that vim provides"})

vim.keymap.set('n','<leader>it', vim.cmd.InspectTree, {desc="Inspect Tree"})
vim.keymap.set('n','<leader>opt', vim.cmd.options,{desc="Show options"})
vim.keymap.set('n', '<leader>li', vim.cmd.LspInfo,{desc="LSP Info"})

vim.keymap.set('n', '<leader>rc', function() vim.cmd.e("~/.config/nvim/init.lua") end,{desc="Go to init.lua"})
vim.keymap.set('n', '<leader>mrc', function() vim.cmd.Ex("~/.config/nvim/lua/walrus/") end,{desc="Go to my rc directory"})
vim.keymap.set('n', '<leader>pl', function() vim.cmd.Ex("~/.config/nvim/lua/plugins/") end,{desc="To to my plugins directory"})
vim.keymap.set('n', '<leader>lsp', function () vim.cmd.Ex("~/.config/nvim/lua/lsps") end,{desc="Go to my lsps directory"})
vim.keymap.set('n', '<leader>e' , vim.diagnostic.open_float,{desc="Show the error in floating window"});
vim.keymap.set('n', '<leader>ca', function ()
        vim.lsp.buf.code_action({filter = function(a) return a.isPreferred end, apply=true});
end, {noremap = true, silent = true,desc="Code Action"})

vim.keymap.set('n', '<Esc>', vim.cmd.nohlsearch,{desc="Remove hilight search"})
vim.keymap.set('n', '<leader>sa','ggVGy<C-o>',{desc="Yank the whole file"})
