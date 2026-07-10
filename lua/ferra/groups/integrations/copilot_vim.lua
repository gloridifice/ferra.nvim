local M = {}

M.url = "https://github.com/github/copilot.vim"

function M.get()
	return {
		CopilotSuggestion = { fg = C.bg3 },
		CopilotAnnotation = { fg = C.coral },
	}
end

return M

