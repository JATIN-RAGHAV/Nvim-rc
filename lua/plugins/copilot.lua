return{
    'github/copilot.vim',
    config = function()
        vim.cmd("Copilot disable")
        vim.g.copilot_enabled = false
    end,
}
