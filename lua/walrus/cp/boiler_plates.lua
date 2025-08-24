require "walrus.cp.snippets"

local path_cp = vim.fn.expand("~/.config/nvim/lua/walrus/cp/cpp_boilerplate.cpp")
local file_cp = io.open(path_cp,"r")
local blp_cp = "hello, world"
if file_cp~=nil then
        blp_cp = file_cp:read('*a')
        file_cp:close()
end
vim.keymap.set('n', '<leader>blp', function ()
        vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(blp_cp,'\n'))
end,{desc="Prints boiler plate code for competitive programming"})

--####################################################################################################

local path_lc = vim.fn.expand("~/.config/nvim/lua/walrus/cp/leetcode_boilerplate.cpp")
local file_lc = io.open(path_lc,'r')
local blp_lc = "Hi"
if file_lc~=nil then
        blp_lc = file_lc:read('*a')
end
vim.keymap.set('n', '<leader>plc', function ()
        vim.api.nvim_buf_set_lines(0,0,-1,false,vim.split(blp_lc,'\n'))
end,{desc="Prints boiler plate code for leetcode problems"})

--####################################################################################################

local path_cses = vim.fn.expand("~/.config/nvim/lua/walrus/cp/cses_boilerplate.cpp")
local file_cses = io.open(path_cses,'r')
local blp_cses = "Hi"
if file_cses~=nil then
        blp_cses = file_cses:read('*a')
end
vim.keymap.set('n', '<leader>cse', function ()
        vim.api.nvim_buf_set_lines(0,0,-1,false,vim.split(blp_cses,'\n'))
end,{desc="Prints boiler plate code for my cses problems"})
