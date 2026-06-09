local M = {}

M.url = "https://github.com/saghen/blink.cmp"

function M.get()
	local style = O.integrations.blink_cmp.style

	local highlights = {
		BlinkCmpLabel = { fg = C.overlay2 },
		BlinkCmpLabelDeprecated = { fg = C.overlay0, style = { "strikethrough" } },
		BlinkCmpKind = { fg = C.coral },
		BlinkCmpMenu = { link = "Pmenu" },
		BlinkCmpDoc = { link = "NormalFloat" },
		BlinkCmpLabelMatch = { link = "PmenuMatch" },
		BlinkCmpMenuSelection = { bg = C.surface1, style = { "bold" } },
		BlinkCmpScrollBarGutter = { bg = C.surface1 },
		BlinkCmpScrollBarThumb = { bg = C.overlay0 },
		BlinkCmpLabelDescription = { link = "PmenuExtra" },
		BlinkCmpLabelDetail = { link = "PmenuExtra" },
		BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },

		BlinkCmpKindText = { fg = C.green },
		BlinkCmpKindMethod = { fg = C.coral },
		BlinkCmpKindFunction = { fg = C.coral },
		BlinkCmpKindConstructor = { fg = C.coral },
		BlinkCmpKindField = { fg = C.green },
		BlinkCmpKindVariable = { fg = C.flamingo },
		BlinkCmpKindClass = { fg = C.yellow },
		BlinkCmpKindInterface = { fg = C.yellow },
		BlinkCmpKindModule = { fg = C.coral },
		BlinkCmpKindProperty = { fg = C.coral },
		BlinkCmpKindUnit = { fg = C.green },
		BlinkCmpKindValue = { fg = C.peach },
		BlinkCmpKindEnum = { fg = C.yellow },
		BlinkCmpKindKeyword = { fg = C.mauve },
		BlinkCmpKindSnippet = { fg = C.flamingo },
		BlinkCmpKindColor = { fg = C.red },
		BlinkCmpKindFile = { fg = C.coral },
		BlinkCmpKindReference = { fg = C.red },
		BlinkCmpKindFolder = { fg = C.coral },
		BlinkCmpKindEnumMember = { fg = C.teal },
		BlinkCmpKindConstant = { fg = C.peach },
		BlinkCmpKindStruct = { fg = C.coral },
		BlinkCmpKindEvent = { fg = C.coral },
		BlinkCmpKindOperator = { fg = C.sky },
		BlinkCmpKindTypeParameter = { fg = C.maroon },
		BlinkCmpKindCopilot = { fg = C.teal },
	}

	if style == "bordered" then
		-- uses FloatBorder.fg and Pmenu.bg
		highlights["BlinkCmpMenuBorder"] = {
			fg = C.coral,
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none or C.mantle,
		}
		highlights["BlinkCmpDocBorder"] = { link = "FloatBorder" }
	end

	return highlights
end

return M

