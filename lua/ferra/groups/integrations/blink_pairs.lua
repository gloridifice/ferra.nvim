local M = {}

M.url = "https://github.com/saghen/blink.pairs"

function M.get()
	return {
		BlinkPairsRed = { fg = C.ember },
		BlinkPairsYellow = { fg = C.honey },
		BlinkPairsBlue = { fg = C.coral },
		BlinkPairsOrange = { fg = C.coral },
		BlinkPairsGreen = { fg = C.sage },
		BlinkPairsPurple = { fg = C.mauve },
		BlinkPairsCyan = { fg = C.sage },
		BlinkPairsUnmatched = { fg = C.ember },
		BlinkPairsMatchParen = { link = "MatchParen" },
	}
end

return M

