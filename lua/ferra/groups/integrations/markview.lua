local M = {}

M.url = "https://github.com/OXY2DEV/markview.nvim"

-- markview.nvim highlight groups:
-- https://github.com/OXY2DEV/markview.nvim#-highlight-groups

function M.get()
	local darkening_percentage = O.transparent_background and 0.28 or 0.095

	local blockquote_bg = not O.transparent_background and C.bg1 or nil

	local groups = {
		MarkviewBlockQuoteDefault = { fg = C.bg3, bg = C.bg1 },
		MarkviewBlockQuoteError = { fg = C.ember, bg = U.darken(C.ember, darkening_percentage, blockquote_bg) },
		MarkviewBlockQuoteNote = { fg = C.coral, bg = U.darken(C.coral, darkening_percentage, blockquote_bg) },
		MarkviewBlockQuoteOk = { fg = C.sage, bg = U.darken(C.sage, darkening_percentage, blockquote_bg) },
		MarkviewBlockQuoteSpecial = { fg = C.mauve, bg = U.darken(C.rose, darkening_percentage, blockquote_bg) },
		MarkviewBlockQuoteWarn = { fg = C.honey, bg = U.darken(C.honey, darkening_percentage, blockquote_bg) },

		MarkviewHyperlink = { link = "@markup.link.url" },

		MarkviewCode = { bg = C.bg1 },
		MarkviewCodeFg = { fg = C.bg1 },
		MarkviewCodeInfo = { fg = C.bg3, bg = C.bg1 },
		MarkviewInlineCode = { bg = C.bg1 },

		MarkviewTableHeader = { fg = C.coral },
	}

	local rainbow = {
		[0] = C.bg3,
		[7] = C.mauve,
	}

	local syntax = require("ferra.groups.syntax").get()

	for i = 0, 7 do
		local color = rainbow[i] or syntax["rainbow" .. i].fg
		local bg = U.darken(color, darkening_percentage, C.bgbase)
		groups["MarkviewPalette" .. i] = { fg = color, bg = bg }
		groups["MarkviewPalette" .. i .. "Fg"] = { fg = color }
		groups["MarkviewPalette" .. i .. "Bg"] = { bg = bg }
		groups["MarkviewIcon" .. i] = { fg = color, bg = C.bg1 }
	end

	return groups
end

return M

