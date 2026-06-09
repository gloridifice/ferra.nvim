local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

function M.get()
	return {
		NeotestPassed = { fg = C.green },
		NeotestFailed = { fg = C.red },
		NeotestRunning = { fg = C.yellow },
		NeotestSkipped = { fg = C.coral },
		NeotestTest = { fg = C.text },
		NeotestNamespace = { fg = C.mauve },
		NeotestFocused = { style = { "bold", "underline" } },
		NeotestFile = { fg = C.coral },
		NeotestDir = { fg = C.coral },
		NeotestIndent = { fg = C.overlay1 },
		NeotestExpandMarker = { fg = C.overlay1 },
		NeotestAdapterName = { fg = C.maroon },
		NeotestWinSelect = { fg = C.coral, style = { "bold" } },
		NeotestMarked = { fg = C.peach, style = { "bold" } },
		NeotestTarget = { fg = C.red },
		NeotestUnknown = { fg = C.text },
	}
end

return M

