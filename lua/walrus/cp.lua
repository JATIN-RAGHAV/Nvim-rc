function Cp()
	local path = vim.fn.expand("~/.config/nvim/lua/walrus/cpp_boilerplate.cpp")
	local file = io.open(path,"r")
	local blp = "hello, world"
	if file~=nil then
		blp = file:read('*a')
		file:close()
	end

	vim.keymap.set('n', '<leader>blp', function ()
		vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(blp,'\n'))
	end)
end

Cp();
