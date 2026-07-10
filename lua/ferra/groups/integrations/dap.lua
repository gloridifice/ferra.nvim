local M = {}

M.url = "https://github.com/mfussenegger/nvim-dap"

function M.get()
	return {
		DapBreakpoint = { fg = C.ember },
		DapBreakpointCondition = { fg = C.honey },
		DapBreakpointRejected = { fg = C.mauve },
		DapLogPoint = { fg = C.mist },
		DapStopped = { fg = C.ember },
	}
end

return M

