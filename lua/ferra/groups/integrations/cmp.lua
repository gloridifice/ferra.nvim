local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

function M.get()
	return {
		CmpItemAbbr = { fg = C.bg3 },
		CmpItemAbbrDeprecated = { fg = C.bg3, style = { "strikethrough" } },
		CmpItemKind = { fg = C.coral },
		CmpItemMenu = { fg = C.blush },
		CmpItemAbbrMatch = { fg = C.blush, style = { "bold" } },
		CmpItemAbbrMatchFuzzy = { fg = C.blush, style = { "bold" } },

		-- kind support
		CmpItemKindSnippet = { fg = C.mauve },
		CmpItemKindKeyword = { fg = C.ember },
		CmpItemKindText = { fg = C.sage },
		CmpItemKindMethod = { fg = C.coral },
		CmpItemKindConstructor = { fg = C.coral },
		CmpItemKindFunction = { fg = C.coral },
		CmpItemKindFolder = { fg = C.coral },
		CmpItemKindModule = { fg = C.coral },
		CmpItemKindConstant = { fg = C.coral },
		CmpItemKindField = { fg = C.sage },
		CmpItemKindProperty = { fg = C.sage },
		CmpItemKindEnum = { fg = C.sage },
		CmpItemKindUnit = { fg = C.sage },
		CmpItemKindClass = { fg = C.honey },
		CmpItemKindVariable = { fg = C.coral },
		CmpItemKindFile = { fg = C.coral },
		CmpItemKindInterface = { fg = C.honey },
		CmpItemKindColor = { fg = C.ember },
		CmpItemKindReference = { fg = C.ember },
		CmpItemKindEnumMember = { fg = C.ember },
		CmpItemKindStruct = { fg = C.coral },
		CmpItemKindValue = { fg = C.coral },
		CmpItemKindEvent = { fg = C.coral },
		CmpItemKindOperator = { fg = C.coral },
		CmpItemKindTypeParameter = { fg = C.coral },
		CmpItemKindCopilot = { fg = C.sage },
	}
end

return M

