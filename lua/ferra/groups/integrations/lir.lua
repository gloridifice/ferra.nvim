local M = {}

M.url = "https://github.com/tamago324/lir.nvim"

function M.get()
	return vim.tbl_deep_extend("force", {}, {
		LirFloatNormal = { fg = C.blush, bg = O.transparent_background and C.none or C.bg1 },
		LirFloatBorder = {
			fg = O.transparent_background and C.bg2 or C.bgbase,
			bg = O.transparent_background and C.none or C.bgbase,
		},
		LirFloatCursorLine = { link = "CursorLine" },
		LirDir = { fg = C.coral },
		LirSymLink = { fg = C.rose },
		LirEmptyDirText = { fg = C.coral },
		LirFloatCurdirWindowNormal = { fg = C.blush },
		LirFloatCurdirWindowDirName = { fg = C.rose, style = { "bold" } },
	}, ((O.integrations.lir and O.integrations.lir.git_status) and {
		LirGitStatusBracket = { fg = C.bg3 },
		LirGitStatusIndex = { fg = C.coral },
		LirGitStatusWorktree = { fg = C.honey },
		LirGitStatusUnmerged = { fg = C.ember },
		LirGitStatusUntracked = { fg = C.mist },
		LirGitStatusIgnored = { fg = C.mist },
	}) or {})
end

return M

