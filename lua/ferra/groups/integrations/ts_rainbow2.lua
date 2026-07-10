local M = {}

M.url = "https://github.com/HiPhish/nvim-ts-rainbow2"

function M.get()
	return {
		TSRainbowRed = { fg = C.ember },
		TSRainbowYellow = { fg = C.honey },
		TSRainbowBlue = { fg = C.coral },
		TSRainbowOrange = { fg = C.coral },
		TSRainbowGreen = { fg = C.sage },
		TSRainbowViolet = { fg = C.mauve },
		TSRainbowCyan = { fg = C.sage },
	}
end

return M

