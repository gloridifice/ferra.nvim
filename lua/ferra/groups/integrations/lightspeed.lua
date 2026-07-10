local M = {}

M.url = "https://github.com/ggandor/lightspeed.nvim"

function M.get()
	return {
		LightspeedLabel = { fg = C.ember, style = { "bold", "underline" } },
		LightspeedLabelDistant = {
			fg = C.mist,
			style = { "bold", "underline" },
		},
		LightspeedShortcut = {
			fg = "#ffffff",
			bg = U.increase_saturation(C.ember, 0.7),
			style = { "bold" },
		},
		LightspeedMaskedChar = {
			fg = U.darken(C.rose, 0.7, C.bgbase),
		},
		LightspeedUnlabeledMatch = { fg = C.blush, style = { "bold" } },
		LightspeedGreyWash = { link = "Comment" },
		LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
		LightspeedOneCharMatch = { link = "LightspeedShortcut" },
		LightspeedPendingOpArea = { link = "IncSearch" },
		LightspeedCursor = { link = "Cursor" },
	}
end

return M

