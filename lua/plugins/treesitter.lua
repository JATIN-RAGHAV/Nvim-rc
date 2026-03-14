-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
    "nvim-treesitter/nvim-treesitter",
    config = function ()
        require'nvim-treesitter'.setup {
            install_dir = vim.fn.stdpath('data') .. '/site'
        }
        require'nvim-treesitter'.install {'lua', 'rust', 'javascript', 'typescript' ,'tsx','cpp','c'}:wait(30000)
        vim.g.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'lua','rust','typescript','javascript' ,'cpp'},
            callback = function() vim.treesitter.start() end,
        })

    end
}
