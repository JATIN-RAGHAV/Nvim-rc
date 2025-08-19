local path_primes = vim.fn.expand("~/.config/nvim/lua/walrus/cp/primes.cpp")
local file_primes = io.open(path_primes,'r')
local blp_primes = "PRIMES HERE"
if file_primes~=nil then
        blp_primes = file_primes:read('*a')
end
vim.api.nvim_create_user_command(
        'Sieve',
        function ()
                vim.api.nvim_put(vim.split(blp_primes,'\n'),"c",true,true)
        end,
        {desc="This prints boiler plate code for sieve prime and for spf"}
)

--####################################################################################################

local path_print_vector = vim.fn.expand("~/.config/nvim/lua/walrus/cp/print_vector.cpp")
local file_print_vector = io.open(path_print_vector,'r')
local blp_print_vector = "Vector printing code here"
if file_print_vector ~= nil then
	blp_print_vector = file_print_vector:read("*a")
end
vim.keymap.set('n' ,'<leader>pov' , function ()
	vim.api.nvim_put(vim.split(blp_print_vector,'\n'),"c",true,true)
end,
{desc="Prints boiler plate for printing a vector"})

--####################################################################################################

local path_print_index_sort = vim.fn.expand("~/.config/nvim/lua/walrus/cp/index_sort.path_print_vector")
local file_print_index_sort = io.open(path_print_index_sort,'r')
local blp_print_index_sort = "index sort"
if file_print_index_sort ~= nil then
	blp_print_index_sort = file_print_index_sort:read('*a')
end
vim.api.nvim_create_user_command(
	"Iota",
	function()
		vim.api.nvim_put(vim.split(blp_print_index_sort,'\n'),'c',true,true)
	end,
	{desc="Prints boilerplate for iota sort"}
)

--####################################################################################################

local path_mod_inverse = vim.fn.expand("~/.config/nvim/lua/walrus/cp/mod_inverse.cpp")
local file_mod_inverse = io.open(path_mod_inverse,'r')
local blp_mod_inverse = "mod inverser function"
if file_mod_inverse~= nil then
	blp_mod_inverse= file_mod_inverse:read("*a")
end
vim.keymap.set('n' ,'<leader>mod' , function ()
	vim.api.nvim_put(vim.split(blp_mod_inverse,'\n'),"c",true,true)
end,
{desc="Prints snippet for calculating mod inverse for some numbers"})

