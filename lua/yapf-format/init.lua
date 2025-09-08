local M = {}

function M.setup(opts)

	opts = opts or {}

	assert(opts.styleYapfPath, "Expected .style.yapf to be specified. Set styleYapfPath in opts.")

	vim.api.nvim_create_autocmd({"BufWritePost"}, {
		pattern = {"*.py"},
		callback = function(ev)
			local out = vim.fn.system({"yapf", "-i", ev.match, "--style=" .. opts.styleYapfPath})
			if out ~= '' then
				print(out)
			end
			vim.cmd("checktime")
		end
	})
end

return M
