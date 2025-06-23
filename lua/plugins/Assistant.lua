return {
        'A7lavinraj/assistant.nvim',
        lazy = false,
        keys = {
                { '<leader>cpp', '<cmd>Assistant<cr>', desc = 'Assistant.nvim' }
        },
        opts = {},
        config = function ()
                require('assistant').setup({
                        mappings = {},
                        commands = {
                                python = {
                                        extension = 'py',
                                        template = nil,
                                        compile = nil,
                                        execute = {
                                                main = 'python3',
                                                args = { '$FILENAME_WITH_EXTENSION' },
                                        },
                                },
                                cpp = {
                                        extension = 'cpp',
                                        template = nil,
                                        compile = {
                                                main = 'clang++',
                                                args = { '$FILENAME_WITH_EXTENSION', '-o', '$FILENAME_WITHOUT_EXTENSION' },
                                        },
                                        execute = {
                                                main = './$FILENAME_WITHOUT_EXTENSION',
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
