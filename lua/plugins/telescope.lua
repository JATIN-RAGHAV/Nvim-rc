return{
        'nvim-telescope/telescope.nvim',
        config = function ()
                local builtin = require('telescope.builtin')
                vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
                vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
                vim.keymap.set('n', '<leader><leader>', builtin.help_tags, { desc = 'Telescope help tags' })
        end
}
