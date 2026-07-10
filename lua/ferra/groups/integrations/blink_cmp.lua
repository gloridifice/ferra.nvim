local M = {}

M.url = "https://github.com/saghen/blink.cmp"

function M.get()
	local style = O.integrations.blink_cmp.style

	local highlights = {
		BlinkCmpLabel = { fg = C.bg3 },
		BlinkCmpLabelDeprecated = { fg = C.bg3, style = { "strikethrough" } },
		BlinkCmpKind = { fg = C.coral },
		BlinkCmpMenu = { link = "Pmenu" },
		BlinkCmpDoc = { link = "NormalFloat" },
		BlinkCmpLabelMatch = { link = "PmenuMatch" },
		BlinkCmpMenuSelection = { bg = C.bg2, style = { "bold" } },
		BlinkCmpScrollBarGutter = { bg = C.bg2 },
		BlinkCmpScrollBarThumb = { bg = C.bg3 },
		BlinkCmpLabelDescription = { link = "PmenuExtra" },
		BlinkCmpLabelDetail = { link = "PmenuExtra" },
		BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },

		BlinkCmpKindText = { fg = C.sage },
		BlinkCmpKindMethod = { fg = C.coral },
		BlinkCmpKindFunction = { fg = C.coral },
		BlinkCmpKindConstructor = { fg = C.coral },
		BlinkCmpKindField = { fg = C.sage },
		BlinkCmpKindVariable = { fg = C.coral },
		BlinkCmpKindClass = { fg = C.honey },
		BlinkCmpKindInterface = { fg = C.honey },
		BlinkCmpKindModule = { fg = C.coral },
		BlinkCmpKindProperty = { fg = C.coral },
		BlinkCmpKindUnit = { fg = C.sage },
		BlinkCmpKindValue = { fg = C.coral },
		BlinkCmpKindEnum = { fg = C.honey },
		BlinkCmpKindKeyword = { fg = C.mauve },
		BlinkCmpKindSnippet = { fg = C.coral },
		BlinkCmpKindColor = { fg = C.ember },
		BlinkCmpKindFile = { fg = C.coral },
		BlinkCmpKindReference = { fg = C.ember },
		BlinkCmpKindFolder = { fg = C.coral },
		BlinkCmpKindEnumMember = { fg = C.sage },
		BlinkCmpKindConstant = { fg = C.coral },
		BlinkCmpKindStruct = { fg = C.coral },
		BlinkCmpKindEvent = { fg = C.coral },
		BlinkCmpKindOperator = { fg = C.mist },
		BlinkCmpKindTypeParameter = { fg = C.ember },
		BlinkCmpKindCopilot = { fg = C.sage },
	}

	if style == "bordered" then
		-- uses FloatBorder.fg and Pmenu.bg
		highlights["BlinkCmpMenuBorder"] = {
			fg = C.coral,
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none or C.bg1,
		}
		highlights["BlinkCmpDocBorder"] = { link = "FloatBorder" }
	end

	return highlights
end

return M

