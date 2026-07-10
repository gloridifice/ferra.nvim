local M = {}

M.url = "https://github.com/vigoux/notifier.nvim"

function M.get()
	return {
		NotifierIcon = { fg = C.mauve },
		NotifierContent = { fg = C.bg3, blend = 0, style = { "italic" } },
		NotifierContentDim = { fg = C.bg3, blend = 0, style = { "italic" } },
	}
end

return M

