return {
        {"folke/tokyonight.nvim",
        config=function() 
                vim.cmd.colorscheme 'tokyonight-night'
        end
        },
        {
                "nvim-treesitter/nvim-treesitter",
                config = function()

                        require"nvim-treesitter.configs".setup({
                                ensure_installed = {'c', 'lua','cpp','rust','python', 'vim','vimdoc','query'},

                                auto_install = true,

                                highlight = {
                                        enable = true,
                                },
                        })
                end
        }
}
