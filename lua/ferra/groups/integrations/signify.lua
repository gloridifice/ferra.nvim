local M = {}

M.url = "https://github.com/mhinz/vim-signify"

function M.get()
	return {
		SignifySignAdd = { fg = C.sage },
		SignifySignChange = { fg = C.honey },
		SignifySignDelete = { fg = C.ember },
	}
end

return M

