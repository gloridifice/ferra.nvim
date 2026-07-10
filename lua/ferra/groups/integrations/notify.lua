local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

function M.get()
	return {
		NotifyBackground = { bg = (O.transparent_background and vim.o.winblend == 0) and "#000000" or C.bg1 },

		NotifyERRORBorder = { fg = C.ember },
		NotifyERRORIcon = { fg = C.ember },
		NotifyERRORTitle = { fg = C.ember, style = { "italic" } },
		NotifyWARNBorder = { fg = C.honey },
		NotifyWARNIcon = { fg = C.honey },
		NotifyWARNTitle = { fg = C.honey, style = { "italic" } },
		NotifyINFOBorder = { fg = C.coral },
		NotifyINFOIcon = { fg = C.coral },
		NotifyINFOTitle = { fg = C.coral, style = { "italic" } },
		NotifyDEBUGBorder = { fg = C.coral },
		NotifyDEBUGIcon = { fg = C.coral },
		NotifyDEBUGTitle = { fg = C.coral, style = { "italic" } },
		NotifyTRACEBorder = { fg = C.blush },
		NotifyTRACEIcon = { fg = C.blush },
		NotifyTRACETitle = { fg = C.blush, style = { "italic" } },
	}
end

return M

