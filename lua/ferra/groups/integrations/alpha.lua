local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

function M.get()
	return {
		AlphaShortcut = { fg = C.sage },
		AlphaHeader = { fg = C.coral },
		AlphaHeaderLabel = { fg = C.coral },
		AlphaButtons = { fg = C.rose },
		AlphaFooter = { fg = C.honey, style = { "italic" } },
	}
end

return M

