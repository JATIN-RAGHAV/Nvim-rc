return{
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',     -- LSP source
    'hrsh7th/cmp-buffer',       -- buffer completions
    'hrsh7th/cmp-path',         -- path completions
    'hrsh7th/cmp-cmdline',      -- command-line completions
    'L3MON4D3/LuaSnip',         -- snippet engine
    'saadparwaiz1/cmp_luasnip', -- snippet source
  },
  config = function()
    local cmp = require'cmp'
    cmp.setup {
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      }, {
        { name = 'buffer' },
      })
    }
  end
}
