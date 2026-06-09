local M = {}

M.url = "https://github.com/machakann/vim-sandwich"

function M.get()
	return {
		OperatorSandwichAdd = { bg = C.coral, fg = C.base },
		OperatorSandwichBuns = { bg = C.coral, fg = C.base },
		OperatorSandwichChange = { bg = C.coral, fg = C.base },
		OperatorSandwichDelete = { bg = C.coral, fg = C.base },
	}
end

return M

