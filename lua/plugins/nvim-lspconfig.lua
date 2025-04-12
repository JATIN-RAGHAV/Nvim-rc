vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

return {
        "neovim/nvim-lspconfig",
        config = function()
                local lspconfig = require("lspconfig")
                lspconfig.clangd.setup({})
                lspconfig.rust_analyzer.setup({
                        settings = {
                                ['rust-analyzer'] = {
                                        cargo = {
                                                loadOutDirsFromCheck = true,
                                        },
                                        checkOnSave = {
                                                command = "check"
                                        },
                                        files = {
                                                -- This enables standalone files support
                                                excludeDirs = {},
                                        },
                                },
                        }
                })
                lspconfig.lua_ls.setup {
                        on_init = function(client)
                                if client.workspace_folders then
                                        local path = client.workspace_folders[1].name
                                        if path ~= vim.fn.stdpath('config') and (vim.uv.fs_stat(path..'/.luarc.json') or vim.uv.fs_stat(path..'/.luarc.jsonc')) then
                                                return
                                        end
                                end

                                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                                        runtime = {
                                                -- Tell the language server which version of Lua you're using
                                                -- (most likely LuaJIT in the case of Neovim)
                                                version = 'LuaJIT'
                                        },
                                        -- Make the server aware of Neovim runtime files
                                        workspace = {
                                                checkThirdParty = false,
                                                library = {
                                                        vim.env.VIMRUNTIME
                                                        -- Depending on the usage, you might want to add additional paths here.
                                                        -- "${3rd}/luv/library"
                                                        -- "${3rd}/busted/library",
                                                }
                                                -- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
                                                -- library = vim.api.nvim_get_runtime_file("", true)
                                        }
                                })
                        end,
                        settings = {
                                Lua = {}
                        }
                }
        end,
}
