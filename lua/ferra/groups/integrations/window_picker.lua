local M = {}

M.url = "https://github.com/s1n7ax/nvim-window-picker"

function M.get()
	return {
		WindowPickerStatusLine = { fg = C.ember, style = { "bold" } },
		WindowPickerStatusLineNC = { fg = C.ember, style = { "bold" } },
		WindowPickerWinBar = { fg = C.ember, style = { "bold" } },
		WindowPickerWinBarNC = { fg = C.ember, style = { "bold" } },
	}
end

return M

