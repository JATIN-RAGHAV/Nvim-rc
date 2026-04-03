vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true,desc="Page half down"})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true, desc="Page half up"})
vim.keymap.set('x', '<leader>p' ,[["_dP]])

vim.keymap.set('n', '<leader>bl', vim.cmd.ls,{desc="List the buffers"})
vim.keymap.set('n', '<leader>bn', vim.cmd.bnext,{desc="Go to the next buffer"})
vim.keymap.set('n', '<leader>bp', vim.cmd.bprevious,{desc="Go to the previous buffer"})

vim.keymap.set('n', '<leader>gj', '<C-w>j', {noremap = true, silent = true, desc = 'Activates the window below'})
vim.keymap.set('n', '<leader>gk', '<C-w>k', {noremap = true, silent = true, desc = 'Activates the window above'})
vim.keymap.set('n', '<leader>gh', '<C-w>h', {noremap = true, silent = true, desc = 'Activates the window on left'})
vim.keymap.set('n', '<leader>gl', '<C-w>l', {noremap = true, silent = true, desc = 'Activates the window on right'})

vim.keymap.set('n', '<leader>fu', '<C-w>99+', {noremap = true, silent = true, desc = 'Maximise the top of the current window'})
vim.keymap.set('n', '<leader>fd', '<C-w>99_', {noremap = true, silent = true, desc = 'Maximise the bottom of the current window'})

vim.keymap.set('n','<leader>pp', function()
        local lines = table.concat(vim.api.nvim_buf_get_lines(0,0,-1,false),'\n')
        vim.print(lines)
        local ns_id = vim.api.nvim_create_namespace("my_highlight_ns")
        vim.api.nvim_buf_add_highlight(0, ns_id, "String", 0, 0, 20)
end,{desc="Shows the magical powers that vim provides"})

vim.keymap.set('n','<leader>it', vim.cmd.InspectTree, {desc="Inspect Tree"})
vim.keymap.set('n', '<leader>li', vim.cmd.LspInfo,{desc="LSP Info"})
vim.keymap.set('n','<leader>opt', vim.cmd.options,{desc="Show options"})

vim.keymap.set('n', '<leader>rc', function() vim.cmd.e("~/.config/nvim/init.lua") end,{desc="Go to init.lua"})
vim.keymap.set('n', '<leader>mrc', function() vim.cmd.Ex("~/.config/nvim/lua/walrus/") end,{desc="Go to my rc directory"})
vim.keymap.set('n', '<leader>pl', function() vim.cmd.Ex("~/.config/nvim/lua/plugins/") end,{desc="To to my plugins directory"})
vim.keymap.set('n', '<leader>lsp', function () vim.cmd.Ex("~/.config/nvim/lua/lsps") end,{desc="Go to my lsps directory"})

vim.keymap.set('n', '<leader>e' , vim.diagnostic.open_float,{desc="Show the error in floating window"});
vim.keymap.set('n', '<leader>ca', function ()
        vim.lsp.buf.code_action({filter = function(a) return a.isPreferred end, apply=true});
end, {noremap = true, silent = true,desc="Code Action"})

vim.keymap.set('n', '<Esc>', vim.cmd.nohlsearch,{desc="Remove hilight search"})

vim.keymap.set('n', '<leader>sa',function()vim.cmd("%y")end,{desc="Yank the whole file"})

vim.keymap.set('n','<leader>cmp',function()
        --we must use terminal
        --if we use terminal we get minimal bash iso
        --time management system must be in this bash
        --we have to use vim to compile since we need name of file
        --bash doesn't have float point subtraction, so we use bc
        --we can't use lua since we are here using vim api and after calling it lua goes on it's marry way
        --this was kinda tough
        --but certainly didn't take 7 hours
        local split_bash = [[vsplit | terminal bash -c ']]
        local start_time = [[start=$(date +\%s.\%N) && ]]
        local compile = [[g++-15 -std=c++23 "%:p" -o /tmp/my_c_file && ]]
        local end_time = [[end=$(date +\%s.\%N) && ]]
        local dur = [[dur=$(echo $end-$start | bc) && ]]
        local print_dur = [[echo Time to Compile: $dur && ]]
        local run = [[/tmp/my_c_file']]
        vim.cmd(split_bash..start_time..compile..end_time..dur..print_dur..run)
end, {desc = "To run the current cpp file in a temp buffer"});

vim.keymap.set('n','<leader>bun',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[bun run "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current TS or JS file in a temp buffer"});

vim.keymap.set('n','<leader>back',function()
        vim.cmd('vsplit | terminal bun run back')
end, {desc = "Run backend with Bun"});

vim.keymap.set('n','<leader>py',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[python3 "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current python file in a temp buffer"});

vim.keymap.set('n','<leader>php',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[php "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current php file in a temp buffer"});

vim.keymap.set('n','<leader>dart',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[dart "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current dart file in a temp buffer"});

vim.keymap.set('n','<leader>cml',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[ocaml "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current ocaml file in a temp buffer"});

vim.keymap.set('n','<leader>lua',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[lua "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current lua file in a temp buffer"});

vim.keymap.set('n','<leader>ruby',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[ruby "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current ruby file in a temp buffer"});

vim.keymap.set('n','<leader>zig',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[zig run "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current zig file in a temp buffer"});

vim.keymap.set('n','<leader>sft',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local run = [[swift "%:p"']]
        vim.cmd(split_bash..run)
end, {desc = "To run the current swift file in a temp buffer"});

vim.keymap.set('n','<leader>lse',function ()
        vim.cmd("LspStop")
end,{desc = "To stop the LSP"})
vim.keymap.set('n','<leader>lsb',function ()
        vim.cmd("LspStart clangd")
end,{desc = "To start the LSP"})

vim.keymap.set('n','<leader>ray',function()
        local split_bash = [[vsplit | terminal bash -c ']]
        local compile = [[eval g++ $(pkg-config --libs --cflags raylib) "%:p" -o /tmp/raylib.out && ]]
        local run = [[/tmp/raylib.out']]
        vim.cmd(split_bash .. compile .. run)
end
)

vim.keymap.set('n', '<leader>fmt', function()
        vim.cmd'%!clang-format'
end)

vim.keymap.set('n',"<leader>a'",function ()
                vim.api.nvim_put({"``"},"c",true,true)
end)

vim.keymap.set('n','<leader>rn', function () vim.lsp.buf.rename() end)
vim.keymap.set('n','d]',function ()
    vim.diagnostic.jump({count=1})
end)
vim.keymap.set('n','d[',function ()
    vim.diagnostic.jump({count=-1})
end)

vim.api.nvim_create_autocmd('FileType', {
    pattern = { '<filetype>' },
    callback = function() vim.treesitter.start() end,
})

-- By default, Codeium is enabled
vim.keymap.set(
        'n','<leader>ag',
        function()
            if vim.g.copilot_enabled then
                vim.cmd("Codeium Toggle")
                vim.cmd("Copilot disable")
                vim.g.copilot_enabled = false
            else
                vim.cmd("Copilot enable")
                vim.cmd("Codeium Toggle")
                vim.g.copilot_enabled = true
            end
        end,
        {desc="Switches between Copilot and Codeium"}
)

vim.keymap.set('n','<leader>aw',function()
    if(vim.g.copilot_enabled) then
        print("Copilot is currently active")
    else
        print("Codeium is currently active")
    end
end,
{desc="To see which AI assistant is currently active"})

vim.keymap.set('n','<leader>ter',function ()
    local split = [[split | terminal]]
    vim.cmd(split)
end)

vim.keymap.set('n','<leader>tb', function()
    if vim.opt.tabstop == 4 then
        vim.opt.tabstop = 8
        vim.opt.shiftwidth = 8
        vim.opt.softtabstop = 8
    else
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.softtabstop = 4
    end
end,
{desc = "To Toggle between 4 and 8 tab spaces"})
