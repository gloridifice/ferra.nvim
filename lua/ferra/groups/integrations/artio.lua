local M = {}

M.url = "https://github.com/comfysage/artio.nvim"

function M.get()
	local transparent_background = require("ferra").options.transparent_background

	return {
		ArtioNormal = {
			fg = C.blush,
			bg = transparent_background and "NONE" or C.bg1,
		},
		ArtioSel = {
			fg = C.coral,
			bg = C.bg1,
			style = { "bold" },
		},
		ArtioMatch = { fg = C.coral },
		ArtioPointer = { fg = C.coral },
		ArtioPrompt = { fg = C.coral },
		ArtioMark = { fg = C.honey },
		ArtioMarkLine = { link = "Visual" },
	}
end

return M

