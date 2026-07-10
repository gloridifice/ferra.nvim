local M = {}

M.url = "https://github.com/rlane/pounce.nvim"

function M.get()
	return {
		PounceMatch = { bg = U.lighten(C.sage, 0.7), fg = C.bgbase, style = { "bold" } },
		PounceGap = { bg = U.darken(C.sage, 0.7), fg = C.bgbase, style = { "bold" } },
		PounceAccept = { bg = C.coral, fg = C.bgbase, style = { "bold" } },
		PounceAcceptBest = { bg = C.sage, fg = C.bgbase, style = { "bold" } },
	}
end

return M

