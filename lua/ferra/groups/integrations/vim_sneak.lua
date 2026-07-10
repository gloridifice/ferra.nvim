local M = {}

M.url = "https://github.com/justinmk/vim-sneak"

function M.get()
	return {
		Sneak = { fg = C.bg3, bg = C.rose },
		SneakScope = { bg = C.blush },
	}
end

return M

