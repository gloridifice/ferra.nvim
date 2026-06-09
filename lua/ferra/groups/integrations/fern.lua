local M = {}

M.url = "https://github.com/lambdalisue/vim-fern"

function M.get()
	return {
		FernBranchText = { fg = C.coral },
	}
end

return M

