local M = {}

M.url = "https://github.com/machakann/vim-sandwich"

function M.get()
	return {
		OperatorSandwichAdd = { bg = C.coral, fg = C.bgbase },
		OperatorSandwichBuns = { bg = C.coral, fg = C.bgbase },
		OperatorSandwichChange = { bg = C.coral, fg = C.bgbase },
		OperatorSandwichDelete = { bg = C.coral, fg = C.bgbase },
	}
end

return M

