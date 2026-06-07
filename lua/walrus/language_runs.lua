vim.keymap.set('n', '<leader>cmp', function()
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
    local compile = [[/run/current-system/sw/bin/g++ -std=c++23 "%:p" -o /tmp/my_c_file && ]]
    local end_time = [[end=$(date +\%s.\%N) && ]]
    local dur = [[dur=$(echo $end-$start | bc) && ]]
    local print_dur = [[echo Time to Compile: $dur && ]]
    local run = [[/tmp/my_c_file']]
    vim.cmd(split_bash .. start_time .. compile .. end_time .. dur .. print_dur .. run)
end, { desc = "To run the current cpp file in a temp buffer" });

vim.keymap.set('n', '<leader>bun', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[bun run "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current TS or JS file in a temp buffer" });

vim.keymap.set('n', '<leader>back', function()
    vim.cmd('vsplit | terminal bun run back')
end, { desc = "Run backend with Bun" });

vim.keymap.set('n', '<leader>py', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[python3 "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current python file in a temp buffer" });

vim.keymap.set('n', '<leader>php', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[php "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current php file in a temp buffer" });

vim.keymap.set('n', '<leader>dart', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[dart "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current dart file in a temp buffer" });

vim.keymap.set('n', '<leader>cml', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[ocaml "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current ocaml file in a temp buffer" });

vim.keymap.set('n', '<leader>lua', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[lua "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current lua file in a temp buffer" });

vim.keymap.set('n', '<leader>ruby', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[ruby "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current ruby file in a temp buffer" });

vim.keymap.set('n', '<leader>zig', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[zig run "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current zig file in a temp buffer" });

vim.keymap.set('n', '<leader>sft', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[swift "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current swift file in a temp buffer" });

vim.keymap.set('n', '<leader>nix', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local run = [[nix-instantiate --eval "%:p"']]
    vim.cmd(split_bash .. run)
end, { desc = "To run the current nix file in a temp buffer" });

vim.keymap.set('n', '<leader>ray', function()
    local split_bash = [[vsplit | terminal bash -c ']]
    local compile = [[eval g++ $(pkg-config --libs --cflags raylib) "%:p" -o /tmp/raylib.out && ]]
    local run = [[/tmp/raylib.out']]
    vim.cmd(split_bash .. compile .. run)
end
)

vim.keymap.set('n', '<leader>fmt', function()
    vim.cmd '%!clang-format'
end)

vim.keymap.set('n',"<leader>rust",function()
    vim.cmd "vsplit | terminal cargo run"
end)
