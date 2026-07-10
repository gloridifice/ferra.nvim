local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

-- render-markdown.nvim highlight groups:
-- https://github.com/MeanderingProgrammer/render-markdown.nvim?tab=readme-ov-file#colors

function M.get()
	local groups = {
		RenderMarkdownCode = { bg = C.bg1 },
		RenderMarkdownCodeInline = { bg = C.bg1 },
		RenderMarkdownBullet = { fg = C.mist },
		RenderMarkdownTableHead = { fg = C.coral },
		RenderMarkdownTableRow = { fg = C.rose },
		RenderMarkdownSuccess = { fg = C.sage },
		RenderMarkdownInfo = { fg = C.mist },
		RenderMarkdownHint = { fg = C.sage },
		RenderMarkdownWarn = { fg = C.honey },
		RenderMarkdownError = { fg = C.ember },
	}

	local syntax = require("ferra.groups.syntax").get()
	local darkening_percentage = O.transparent_background and 0.28 or 0.095

	for i = 1, 6 do
		local color = syntax["rainbow" .. i].fg
		groups["RenderMarkdownH" .. i] = { fg = color }
		groups["RenderMarkdownH" .. i .. "Bg"] = { bg = U.darken(color, darkening_percentage, C.bgbase) }
	end

	return groups
end

return M

