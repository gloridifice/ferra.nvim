local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

function M.get()
	return {
		TreesitterContext = {
			fg = C.blush,
			bg = O.transparent_background and C.none or C.bg1,
		},
		TreesitterContextBottom = {
			sp = O.transparent_background and C.dim or C.bg1,
		},
		TreesitterContextLineNumber = O.transparent_background and {
			fg = C.blush,
		} or {
			fg = C.bg2,
			bg = C.bg1,
		},
	}
end

return M

