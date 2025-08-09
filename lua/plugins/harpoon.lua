return {
        'ThePrimeagen/harpoon',
        config = function ()
                local mark = require("harpoon.mark")
                local ui = require"harpoon.ui"

                vim.keymap.set('n', '<leader>a', mark.add_file,{desc="Add file to harpoon"})
                vim.keymap.set('n', '<leader>as', ui.toggle_quick_menu,{desc="Show harpoon files"})
                vim.keymap.set('n', '<leader>1', function () ui.nav_file(1) end)
                vim.keymap.set('n', '<leader>2', function () ui.nav_file(2) end)
                vim.keymap.set('n', '<leader>3', function () ui.nav_file(3) end)
                vim.keymap.set('n', '<leader>4', function () ui.nav_file(4) end)
                vim.keymap.set('n', '<S-k>', ui.nav_next,{desc="Go to Prev file"})
                vim.keymap.set('n', '<S-j>', ui.nav_prev,{desc="Go to next file"})
        end
}
