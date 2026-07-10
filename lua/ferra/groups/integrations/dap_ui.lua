local M = {}

M.url = "https://github.com/rcarriga/nvim-dap-ui"

function M.get()
	return {
		DapUIScope = { fg = C.mist },
		DapUIType = { fg = C.mauve },
		DapUIValue = { fg = C.mist },
		DapUIVariable = { fg = C.blush },
		DapUIModifiedValue = { fg = C.coral },
		DapUIDecoration = { fg = C.mist },
		DapUIThread = { fg = C.sage },
		DapUIStoppedThread = { fg = C.mist },
		DapUISource = { fg = C.rose },
		DapUILineNumber = { fg = C.mist },
		DapUIFloatBorder = { link = "FloatBorder" },

		DapUIWatchesEmpty = { fg = C.ember },
		DapUIWatchesValue = { fg = C.sage },
		DapUIWatchesError = { fg = C.ember },

		DapUIBreakpointsPath = { fg = C.mist },
		DapUIBreakpointsInfo = { fg = C.sage },
		DapUIBreakpointsCurrentLine = { fg = C.sage, style = { "bold" } },
		DapUIBreakpointsDisabledLine = { fg = C.bg2 },

		DapUIStepOver = { fg = C.coral },
		DapUIStepOverNC = { link = "DapUIStepOver" },
		DapUIStepInto = { fg = C.coral },
		DapUIStepIntoNC = { link = "DapUIStepInto" },
		DapUIStepBack = { fg = C.coral },
		DapUIStepBackNC = { link = "DapUIStepBack" },
		DapUIStepOut = { fg = C.coral },
		DapUIStepOutNC = { link = "DapUIStepOut" },
		DapUIStop = { fg = C.ember },
		DapUIStopNC = { link = "DapUIStop" },
		DapUIPlayPause = { fg = C.sage },
		DapUIPlayPauseNC = { link = "DapUIPlayPause" },
		DapUIRestart = { fg = C.sage },
		DapUIRestartNC = { link = "DapUIRestart" },
		DapUIUnavailable = { fg = C.bg2 },
		DapUIUnavailableNC = { link = "DapUIUnavailable" },

		DapUIWinSelect = { fg = C.coral },
	}
end

return M

