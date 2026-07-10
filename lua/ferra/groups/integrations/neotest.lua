local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

function M.get()
	return {
		NeotestPassed = { fg = C.sage },
		NeotestFailed = { fg = C.ember },
		NeotestRunning = { fg = C.honey },
		NeotestSkipped = { fg = C.coral },
		NeotestTest = { fg = C.blush },
		NeotestNamespace = { fg = C.mauve },
		NeotestFocused = { style = { "bold", "underline" } },
		NeotestFile = { fg = C.coral },
		NeotestDir = { fg = C.coral },
		NeotestIndent = { fg = C.bg3 },
		NeotestExpandMarker = { fg = C.bg3 },
		NeotestAdapterName = { fg = C.ember },
		NeotestWinSelect = { fg = C.coral, style = { "bold" } },
		NeotestMarked = { fg = C.coral, style = { "bold" } },
		NeotestTarget = { fg = C.ember },
		NeotestUnknown = { fg = C.blush },
	}
end

return M

