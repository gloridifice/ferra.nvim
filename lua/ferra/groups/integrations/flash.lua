local M = {}

M.url = "https://github.com/folke/flash.nvim"

function M.get()
	local bg = O.transparent_background and C.none or C.bgbase
	return {
		FlashBackdrop = { fg = C.bg3 },
		FlashLabel = { fg = C.sage, bg = bg, style = { "bold" } },
		FlashMatch = { fg = C.rose, bg = bg },
		FlashCurrent = { fg = C.coral, bg = bg },
		FlashPrompt = { link = "NormalFloat" },
	}
end

return M

