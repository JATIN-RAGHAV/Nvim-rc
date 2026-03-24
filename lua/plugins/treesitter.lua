-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
    "nvim-treesitter/nvim-treesitter",
    config = function ()
        require'nvim-treesitter'.setup {
            install_dir = vim.fn.stdpath('data') .. '/site',
        }

        require'nvim-treesitter'.install {'lua', 'rust','go', 'javascript', 'typescript','jsx' ,'tsx','cpp','c','html','css','python'}:wait(30000)

        -- Start Hilight and indentation and folding on entering file
        vim.api.nvim_create_autocmd({"BufReadPost", "BufNewFile"}, {
            pattern = {"*.tsx","*.jsx","*.ts","*.js","*.cpp","*.c","*.h","*.lua","*.py","*.html","*.css","*.rs","*.go","*.py"},
            callback = function()
                vim.treesitter.start()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end
}
