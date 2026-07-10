local M = {}

M.url = "https://github.com/j-hui/fidget.nvim"

function M.get()
	return {
		FidgetTask = {
			bg = O.transparent_background and C.none or C.bg1,
			fg = C.blush,
		},
		FidgetTitle = { fg = C.coral },
	}
end

return M

