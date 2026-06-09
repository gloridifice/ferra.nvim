local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

function M.get()
	return {
		AlphaShortcut = { fg = C.green },
		AlphaHeader = { fg = C.coral },
		AlphaHeaderLabel = { fg = C.peach },
		AlphaButtons = { fg = C.lavender },
		AlphaFooter = { fg = C.yellow, style = { "italic" } },
	}
end

return M

