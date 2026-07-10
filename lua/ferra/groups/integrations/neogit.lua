local M = {}

M.url = "https://github.com/NeogitOrg/neogit"

function M.get()
	return {
		NeogitBranch = {
			fg = C.coral,
			style = { "bold" },
		},
		NeogitRemote = {
			fg = C.sage,
			style = { "bold" },
		},
		NeogitUnmergedInto = {
			link = "Function",
		},
		NeogitUnpulledFrom = {
			link = "Function",
		},
		NeogitObjectId = {
			link = "Comment",
		},
		NeogitStash = {
			link = "Comment",
		},
		NeogitRebaseDone = {
			link = "Comment",
		},
		NeogitHunkHeader = {
			bg = U.darken(C.coral, 0.095, C.bgbase),
			fg = U.darken(C.coral, 0.5, C.bgbase),
		},
		NeogitHunkHeaderHighlight = {
			bg = U.darken(C.coral, 0.215, C.bgbase),
			fg = C.coral,
		},
		NeogitDiffContextHighlight = {
			bg = C.bg1,
		},
		NeogitDiffDeleteHighlight = {
			bg = U.darken(C.ember, 0.345, C.bgbase),
			fg = U.lighten(C.ember, 0.850, C.blush),
		},
		NeogitDiffAddHighlight = {
			bg = U.darken(C.sage, 0.345, C.bgbase),
			fg = U.lighten(C.sage, 0.850, C.blush),
		},
		NeogitDiffDelete = {
			bg = U.darken(C.ember, 0.095, C.bgbase),
			fg = U.darken(C.ember, 0.800, C.bgbase),
		},
		NeogitDiffDeleteInline = {
			bg = U.darken(C.ember, 0.500, C.bgbase),
			style = { "bold" },
		},
		NeogitDiffAdd = {
			bg = U.darken(C.sage, 0.095, C.bgbase),
			fg = U.darken(C.sage, 0.800, C.bgbase),
		},
		NeogitDiffAddInline = {
			bg = U.darken(C.sage, 0.500, C.bgbase),
			style = { "bold" },
		},
		NeogitCommitViewHeader = {
			bg = U.darken(C.coral, 0.300, C.bgbase),
			fg = U.lighten(C.coral, 0.800, C.blush),
		},
		NeogitChangeModified = {
			fg = C.coral,
			style = { "bold" },
		},
		NeogitChangeDeleted = {
			fg = C.ember,
			style = { "bold" },
		},
		NeogitChangeAdded = {
			fg = C.sage,
			style = { "bold" },
		},
		NeogitChangeRenamed = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitChangeUpdated = {
			fg = C.coral,
			style = { "bold" },
		},
		NeogitChangeCopied = {
			fg = C.rose,
			style = { "bold" },
		},
		NeogitChangeBothModified = {
			fg = C.honey,
			style = { "bold" },
		},
		NeogitChangeNewFile = {
			fg = C.sage,
			style = { "bold" },
		},
		NeogitUntrackedfiles = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitUnstagedchanges = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitUnmergedchanges = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitUnpulledchanges = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitRecentcommits = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitStagedchanges = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitStashes = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitRebasing = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitNotificationInfo = {
			fg = C.coral,
		},
		NeogitNotificationWarning = {
			fg = C.honey,
		},
		NeogitNotificationError = {
			fg = C.ember,
		},
		NeogitGraphRed = {
			fg = C.ember,
		},
		NeogitGraphWhite = {
			fg = C.bgbase,
		},
		NeogitGraphYellow = {
			fg = C.honey,
		},
		NeogitGraphGreen = {
			fg = C.sage,
		},
		NeogitGraphCyan = {
			fg = C.coral,
		},
		NeogitGraphBlue = {
			fg = C.coral,
		},
		NeogitGraphPurple = {
			fg = C.rose,
		},
		NeogitGraphGray = {
			fg = C.blush,
		},
		NeogitGraphOrange = {
			fg = C.coral,
		},
		NeogitGraphBoldRed = {
			fg = C.ember,
			style = { "bold" },
		},
		NeogitGraphBoldWhite = {
			fg = C.white,
			style = { "bold" },
		},
		NeogitGraphBoldYellow = {
			fg = C.honey,
			style = { "bold" },
		},
		NeogitGraphBoldGreen = {
			fg = C.sage,
			style = { "bold" },
		},
		NeogitGraphBoldCyan = {
			fg = C.coral,
			style = { "bold" },
		},
		NeogitGraphBoldBlue = {
			fg = C.coral,
			style = { "bold" },
		},
		NeogitGraphBoldPurple = {
			fg = C.rose,
			style = { "bold" },
		},
		NeogitGraphBoldGray = {
			fg = C.blush,
			style = { "bold" },
		},
		NeogitDiffContext = {
			bg = C.bgbase,
		},
		NeogitPopupBold = {
			style = { "bold" },
		},
		NeogitPopupSwitchKey = {
			fg = C.rose,
		},
		NeogitPopupOptionKey = {
			fg = C.rose,
		},
		NeogitPopupConfigKey = {
			fg = C.rose,
		},
		NeogitPopupActionKey = {
			fg = C.rose,
		},
		NeogitFilePath = {
			fg = C.coral,
			style = { "italic" },
		},
		NeogitDiffHeader = {
			bg = C.bgbase,
			fg = C.coral,
			style = { "bold" },
		},
		NeogitDiffHeaderHighlight = {
			bg = C.bgbase,
			fg = C.coral,
			style = { "bold" },
		},
		NeogitUnpushedTo = {
			fg = C.rose,
			style = { "bold" },
		},
		NeogitFold = {
			fg = C.none,
			bg = C.none,
		},
		NeogitSectionHeader = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitTagName = {
			fg = C.honey,
		},
		NeogitTagDistance = {
			fg = C.coral,
		},
		NeogitWinSeparator = {
			link = "WinSeparator",
		},
	}
end

return M

