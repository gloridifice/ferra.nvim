local M = {}

M.url = "https://github.com/nvim-telekasten/telekasten.nvim"

function M.get()
	return {
		tkLink = { fg = C.coral },
		tkBrackets = { fg = C.rose },
		tkTag = { fg = C.mist },
	}
end

return M

