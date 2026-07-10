local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

function M.get()
	return {
		RainbowDelimiterRed = { fg = C.ember },
		RainbowDelimiterYellow = { fg = C.honey },
		RainbowDelimiterBlue = { fg = C.coral },
		RainbowDelimiterOrange = { fg = C.coral },
		RainbowDelimiterGreen = { fg = C.sage },
		RainbowDelimiterViolet = { fg = C.mauve },
		RainbowDelimiterCyan = { fg = C.sage },
	}
end

return M

