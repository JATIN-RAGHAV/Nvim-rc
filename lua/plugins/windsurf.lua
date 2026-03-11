return{
    'Exafunction/windsurf.nvim',
    event = 'BufEnter',
    config = function ()
        local codeium = require("codeium")
        codeium.setup({
            enable_cmp_source = true,
            virtual_text = {
                enabled = true,
                manual = false,
                filetypes = {},
                default_filetype_enabled = true,
                idle_delay = 0,
                virtual_text_priority = 65535,
                map_keys = true,
                accept_fallback = nil,
                key_bindings = {
                    accept = "<c-e>",
                    accept_word = false,
                    accept_line = false,
                    clear = false,
                    next = "<M-]>",
                    prev = "<M-[>",
                }
            }
        })
        vim.keymap.set('i', '<c-x>', function() return codeium.Clear() end, { expr = true, silent = true })
    end,
}
