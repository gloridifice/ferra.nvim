local M = {}

M.url = "https://github.com/mason-org/mason.nvim"

function M.get()
	local bg = O.transparent_background and C.none or C.rose
	local fg = O.transparent_background and C.rose or C.bgbase

	local secondary_bg = O.transparent_background and C.none or C.coral
	local secondary_fg = O.transparent_background and C.coral or C.bgbase

	local muted_bg = O.transparent_background and C.none or C.bg3
	local muted_fg = O.transparent_background and C.bg3 or C.bgbase

	return {
		MasonHeader = { fg = fg, bg = bg, style = { "bold" } },
		MasonHeaderSecondary = { fg = secondary_fg, bg = secondary_bg, style = { "bold" } },

		MasonHighlight = { fg = C.sage },
		MasonHighlightBlock = {
			bg = O.transparent_background and C.none or C.sage,
			fg = O.transparent_background and C.sage or C.bgbase,
		},
		MasonHighlightBlockBold = { bg = secondary_bg, fg = secondary_fg, bold = true },

		MasonHighlightSecondary = { fg = C.mauve },
		MasonHighlightBlockSecondary = { fg = secondary_fg, bg = secondary_bg },
		MasonHighlightBlockBoldSecondary = { fg = fg, bg = bg, bold = true },

		MasonMuted = { fg = C.bg3 },
		MasonMutedBlock = { bg = muted_bg, fg = muted_fg },
		MasonMutedBlockBold = { bg = C.honey, fg = C.bgbase, bold = true },

		MasonError = { fg = C.ember },

		MasonHeading = { fg = C.rose, bold = true },
	}
end

return M

