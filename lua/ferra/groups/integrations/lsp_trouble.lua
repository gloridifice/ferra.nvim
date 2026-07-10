local M = {}

M.url = "https://github.com/folke/trouble.nvim"

function M.get()
	return {
		TroubleText = { fg = C.sage },
		TroubleCount = { fg = C.rose, bg = O.transparent_background and C.none or C.bg2 },
		TroubleNormal = { fg = C.blush, bg = O.transparent_background and C.none or C.bgbase },
		TroubleNormalNC = { link = "TroubleNormal" },
	}
end

return M

