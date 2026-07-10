local M = {}

M.url = "https://github.com/stevearc/overseer.nvim"

function M.get()
	return {
		OverseerPENDING = { fg = C.grey },
		OverseerRUNNING = { fg = C.honey },
		OverseerSUCCESS = { fg = C.sage },
		OverseerCANCELED = { fg = C.bg3 },
		OverseerFAILURE = { fg = C.ember },
		OverseerTask = { fg = C.coral },
		OverseerTaskBorder = { fg = C.mist },
		OverseerOutput = { fg = C.blush },
		OverseerComponent = { fg = C.honey },
		OverseerField = { fg = C.sage },
	}
end

return M

