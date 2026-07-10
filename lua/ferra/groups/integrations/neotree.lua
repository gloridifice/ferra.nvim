local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

function M.get()
	local active_bg = O.transparent_background and C.none or C.bg1
	local inactive_bg = O.transparent_background and C.none or C.bgbase
	return {
		NeoTreeDirectoryName = { fg = C.coral },
		NeoTreeDirectoryIcon = { fg = C.coral },
		NeoTreeNormal = { fg = C.blush, bg = active_bg },
		NeoTreeNormalNC = { fg = C.blush, bg = active_bg },
		NeoTreeExpander = { fg = C.bg3 },
		NeoTreeIndentMarker = { fg = C.bg3 },
		NeoTreeRootName = { fg = C.coral, style = { "bold" } },
		NeoTreeSymbolicLinkTarget = { fg = C.rose },
		NeoTreeModified = { fg = C.coral },

		NeoTreeGitAdded = { fg = C.sage },
		NeoTreeGitConflict = { fg = C.ember },
		NeoTreeGitDeleted = { fg = C.ember },
		NeoTreeGitIgnored = { fg = C.bg3 },
		NeoTreeGitModified = { fg = C.rose },
		NeoTreeGitUnstaged = { fg = C.ember },
		NeoTreeGitUntracked = { fg = C.mauve },
		NeoTreeGitStaged = { fg = C.sage },

		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },
		NeoTreeTitleBar = { fg = C.bg1, bg = C.coral },

		NeoTreeFileNameOpened = { fg = C.rose },
		NeoTreeDimText = { fg = C.bg3 },
		NeoTreeFilterTerm = { fg = C.sage, style = { "bold" } },
		NeoTreeTabActive = { bg = active_bg, fg = C.rose, style = { "bold" } },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.bg3 },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.bgbase, bg = inactive_bg },
		NeoTreeWinSeparator = {
			fg = O.transparent_background and C.bg2 or C.bgbase,
			bg = O.transparent_background and C.none or C.bgbase,
		},
		NeoTreeStatusLineNC = { fg = C.bg1, bg = C.bg1 },
	}
end

return M

