return {
    'A7lavinraj/assistant.nvim',
    lazy = false,
    keys = {
        { '<leader>cpp', '<cmd>Assistant<cr>', desc = 'Assistant.nvim' }
    },
    opts = {},
    config = function()
        require('assistant').setup({
            mappings = {},
            commands = {
                cpp = {
                    extension = 'cpp',
                    template = nil,
                    compile = {
                        main = '/run/current-system/sw/bin/g++',
                        args = { '-std=c++23', '$FILENAME_WITH_EXTENSION', '-o', '/tmp/$FILENAME_WITHOUT_EXTENSION' },
                    },
                    execute = {
                        main = '/tmp/$FILENAME_WITHOUT_EXTENSION',
                        args = nil,
                    },
                },
            },
            ui = {
                border = 'double',
                diff_mode = true,
                title_components_separator = '>',
            },
            core = {
                process_budget = 5000,
                port = 10043,
                filename_generator = nil
            },
        })
    end
}
