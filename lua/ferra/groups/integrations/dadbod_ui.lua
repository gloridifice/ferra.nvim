local M = {}

M.url = "https://github.com/kristijanhusak/vim-dadbod-ui"

function M.get()
	return {
		NotificationInfo = { fg = C.coral, bg = C.bg1 },
		NotificationWarning = { fg = C.honey, bg = C.bg1 },
		NotificationError = { fg = C.ember, bg = C.bg1 },
	}
end

return M

