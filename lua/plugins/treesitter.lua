return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require('nvim-treesitter').install{
            "c", "cpp", "lua", "python", "javascript", "typescript", "tsx", "jsx","markdown"
        }
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '<filetype>' },
            callback = function() print("hi");vim.treesitter.start() end,
        })
    end
}
