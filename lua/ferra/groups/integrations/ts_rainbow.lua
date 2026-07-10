local M = {}

M.url = "https://github.com/HiPhish/nvim-ts-rainbow"

function M.get()
	return {
		rainbowcol1 = { fg = C.ember },
		rainbowcol2 = { fg = C.sage },
		rainbowcol3 = { fg = C.honey },
		rainbowcol4 = { fg = C.coral },
		rainbowcol5 = { fg = C.rose },
		rainbowcol6 = { fg = C.coral },
		rainbowcol7 = { fg = C.sage },
	}
end

return M

