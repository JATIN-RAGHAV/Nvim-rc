local path_primes = vim.fn.expand("~/.config/nvim/lua/walrus/cp/primes.cpp")
local file_primes = io.open(path_primes,'r')
local blp_primes = "PRIMES HERE"
if file_primes~=nil then
        blp_primes = file_primes:read('*a')
end
vim.keymap.set('n', '<leader>prms' , function ()
        vim.api.nvim_put(vim.split(blp_primes,'\n'),"c",true,true)
end,{desc="This prints boiler plate code for sieve prime and for spf"})
