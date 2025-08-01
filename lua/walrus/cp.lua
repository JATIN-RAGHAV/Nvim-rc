function Cp()

	local bs = "This is supposed to be printed"

	local path_cp = vim.fn.expand("~/.config/nvim/lua/walrus/cpp_boilerplate.cpp")
	local file_cp = io.open(path_cp,"r")
	local blp_cp = "hello, world"
	if file_cp~=nil then
		blp_cp = file_cp:read('*a')
		file_cp:close()
	end

	vim.keymap.set('n', '<leader>pcpp', function ()
		vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(blp_cp,'\n'))
	end)

	local path_lc = vim.fn.expand("~/.config/nvim/lua/walrus/leetcode_boilerplate.cpp")
	local file_lc = io.open(path_lc,'r')
	local blp_lc = "Hi"
	if file_lc~=nil then
		blp_lc = file_lc:read('*a')
	end

	vim.keymap.set('n', '<leader>plc', function ()
		vim.api.nvim_buf_set_lines(0,0,-1,false,vim.split(blp_lc,'\n'))
	end)


	vim.keymap.set('n', '<leader>pbs' , function ()
		vim.api.nvim_put(vim.split(bs,'\n'),"c",true,true)
	end,{desc="This prints the bs variable starting from the cursor position"})
end

Cp();
