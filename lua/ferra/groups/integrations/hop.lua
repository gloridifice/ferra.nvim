local M = {}

M.url = "https://github.com/hadronized/hop.nvim"

function M.get()
	local bg = O.transparent_background and C.none or C.bgbase
	return {
		HopNextKey = { bg = bg, fg = C.coral, style = { "bold", "underline" } },
		HopNextKey1 = { bg = bg, fg = C.coral, style = { "bold" } },
		HopNextKey2 = { bg = bg, fg = C.sage, style = { "bold", "italic" } },
		HopUnmatched = { bg = bg, fg = C.bg3 },
	}
end

return M

