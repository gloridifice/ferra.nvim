local M = {}

M.url = "https://github.com/yetone/avante.nvim"

function M.get()
	local rounded = O.integrations.avante.windows_sidebar_header_rounded
	return {
		-- titles
		AvanteTitle = rounded and { bg = C.rose, fg = C.bgbase } or { fg = C.rose },
		AvanteReversedTitle = rounded and { bg = C.none, fg = C.rose } or { fg = C.rose },

		AvanteSubtitle = rounded and { bg = C.coral, fg = C.bgbase } or { fg = C.coral },
		AvanteReversedSubtitle = rounded and { bg = C.none, fg = C.coral } or { fg = C.coral },

		AvanteThirdTitle = rounded and { bg = C.coral, fg = C.bgbase } or { fg = C.coral },
		AvanteReversedThirdTitle = rounded and { bg = C.none, fg = C.coral } or { fg = C.coral },

		-- hints
		AvanteInlineHint = { fg = C.bg3 },
		AvantePopupHint = { fg = C.bg3 },
		AvanteAnnotation = { fg = C.bg3 },
		AvanteSuggestion = { fg = C.bg3 },

		-- conflicts
		AvanteConflictCurrent = {
			bg = O.transparent_background and C.none or C.bg1,
			fg = C.sage,
		},
		AvanteConflictCurrentLabel = {
			bg = O.transparent_background and C.none or C.bg1,
			fg = C.sage,
		},

		AvanteConflictIncoming = {
			bg = O.transparent_background and C.none or C.bg1,
			fg = C.coral,
		},
		AvanteConflictIncomingLabel = {
			bg = O.transparent_background and C.none or C.bg1,
			fg = C.coral,
		},

		AvanteConflictAncestor = {
			bg = O.transparent_background and C.none or C.bg1,
			fg = C.sage,
		},
		AvanteConflictAncestorLabel = {
			bg = O.transparent_background and C.none or C.bg1,
			fg = C.sage,
		},

		AvanteToBeDeleted = {
			bg = O.transparent_background and C.none or C.bg1,
			fg = C.ember,
		},

		AvanteSidebarWinSeparator = {
			link = "WinSeparator",
		},

		AvantePromptInput = {
			link = "FloatNormal",
		},

		AvantePromptInputBorder = {
			link = "FloatBorder",
		},
	}
end

return M

