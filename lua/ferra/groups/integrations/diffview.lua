local M = {}

M.url = "https://github.com/sindrets/diffview.nvim"

function M.get()
	return {
		DiffviewDim1 = { link = "Comment" },
		DiffviewPrimary = { fg = C.coral },
		DiffviewSecondary = { fg = C.sage },
		DiffviewNormal = { fg = C.blush, bg = O.transparent_background and C.none or C.bg1 },
		DiffviewWinSeparator = {
			fg = O.transparent_background and C.bg2 or C.bgbase,
			bg = O.transparent_background and C.none or C.bgbase,
		},
		DiffviewFilePanelTitle = { fg = C.coral, style = { "bold" } },
		DiffviewFilePanelCounter = { fg = C.blush },
		DiffviewFilePanelRootPath = { fg = C.rose, style = { "bold" } },
		DiffviewFilePanelFileName = { fg = C.blush },
		DiffviewFilePanelSelected = { fg = C.honey },
		DiffviewFilePanelPath = { link = "Comment" },
		DiffviewFilePanelInsertions = { fg = C.sage },
		DiffviewFilePanelDeletions = { fg = C.ember },
		DiffviewFilePanelConflicts = { fg = C.honey },
		DiffviewFolderName = { fg = C.coral, style = { "bold" } },
		DiffviewFolderSign = { fg = C.coral },
		DiffviewHash = { fg = C.coral },
		DiffviewReference = { fg = C.coral, style = { "bold" } },
		DiffviewReflogSelector = { fg = C.rose },
		DiffviewStatusAdded = { fg = C.sage },
		DiffviewStatusUntracked = { fg = C.sage },
		DiffviewStatusModified = { fg = C.honey },
		DiffviewStatusRenamed = { fg = C.honey },
		DiffviewStatusCopied = { fg = C.honey },
		DiffviewStatusTypeChange = { fg = C.honey },
		DiffviewStatusUnmerged = { fg = C.honey },
		DiffviewStatusUnknown = { fg = C.ember },
		DiffviewStatusDeleted = { fg = C.ember },
		DiffviewStatusBroken = { fg = C.ember },
		DiffviewStatusIgnored = { fg = C.bg3 },
	}
end

return M

