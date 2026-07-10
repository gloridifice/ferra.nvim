local M = {}

M.url = "https://github.com/francescarpi/buffon.nvim"

function M.get()
	return {
		BuffonUnloadedBuffer = { fg = C.bg2 },
		BuffonShortcut = { fg = C.coral },
		BuffonLineActive = { fg = C.mist },
		BuffonUnsavedIndicator = { fg = C.ember },
	}
end

return M

