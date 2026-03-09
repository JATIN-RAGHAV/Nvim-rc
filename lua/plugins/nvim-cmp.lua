return{
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',     -- LSP source
        'hrsh7th/cmp-buffer',       -- buffer completions
        'hrsh7th/cmp-path',         -- path completions
        'hrsh7th/cmp-cmdline',      -- command-line completions
        'L3MON4D3/LuaSnip',         -- snippet engine
        'saadparwaiz1/cmp_luasnip', -- snippet source
        "tailwind-tools",
        "onsails/lspkind-nvim"
    },
    config = function()

        local cmp = require('cmp')

        cmp.setup {
            completion = {
                completeopt = "menu,menuone,noinsert",
                keyword_pattern = [[\k\+]],
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            }),
            formatting = {
                format = require("lspkind").cmp_format({
                    before = require("tailwind-tools.cmp").lspkind_format,
                    mode = "symbol",
                    maxwidth = 50,
                    ellipsis_char = '...',
                    symbol_map = { Codeium = "", }
                }),
            },
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'pylsp' },
                { name = 'clangd' },
                { name = 'rust_analyzer' },
                { name = 'tailwindcss' },
                { name = 'codeium'}
            },{
                    { name = 'buffer' },
                    { name = 'path' },
                }),
        }
    end
}
