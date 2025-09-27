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

--####################################################################################################

local path_diophantine = vim.fn.expand("~/.config/nvim/lua/walrus/cp/diophantine.cpp")
local file_diophantine= io.open(path_diophantine,'r')
local blp_diophantine= "Diophantine code will go here"
if file_diophantine~= nil then
	blp_diophantine = file_diophantine:read("*a")
end
vim.keymap.set('n' ,'<leader>dio' , function ()
	vim.api.nvim_put(vim.split(blp_diophantine,'\n'),"c",true,true)
end,
{desc="Prints the code for solving a diophantine equaition"})

--####################################################################################################

local path_pbds = vim.fn.expand("~/.config/nvim/lua/walrus/cp/pbds.cpp")
local file_pbds = io.open(path_pbds,'r')
local blp_pbds = "Puts code for Policy Based Data Structures"
if file_pbds ~= nil then
	blp_pbds = file_pbds:read("*a")
end
vim.api.nvim_create_user_command(
        'PBDS',
        function ()
                vim.api.nvim_put(vim.split(blp_pbds,'\n'),"c",true,true);
        end,
        {desc="Puts code for Policy Based Data Structures"}
)

--####################################################################################################

local path_pow = vim.fn.expand("~/.config/nvim/lua/walrus/cp/pow.cpp")
local file_pow = io.open(path_pow,'r')
local blp_pow = "Prints function to calculate exponent"
if file_pow ~= nil then
	blp_pow = file_pow:read("*a")
end
vim.api.nvim_create_user_command(
        'Pow',
        function ()
                vim.api.nvim_put(vim.split(blp_pow,'\n'),"c",true,true);
        end,
        {desc="Prints function to calculate exponent"}
)
