local M = {}

M.url = "https://github.com/kevinhwang91/nvim-ufo"

M.get = function()
	return {
		UfoFoldedFg = { fg = C.rose },
		UfoFoldedEllipsis = { fg = C.bgbase, bg = C.coral },
	}
end

return M

