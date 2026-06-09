local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

function M.get()
	return {
		CmpItemAbbr = { fg = C.overlay2 },
		CmpItemAbbrDeprecated = { fg = C.overlay0, style = { "strikethrough" } },
		CmpItemKind = { fg = C.coral },
		CmpItemMenu = { fg = C.text },
		CmpItemAbbrMatch = { fg = C.text, style = { "bold" } },
		CmpItemAbbrMatchFuzzy = { fg = C.text, style = { "bold" } },

		-- kind support
		CmpItemKindSnippet = { fg = C.mauve },
		CmpItemKindKeyword = { fg = C.red },
		CmpItemKindText = { fg = C.teal },
		CmpItemKindMethod = { fg = C.coral },
		CmpItemKindConstructor = { fg = C.coral },
		CmpItemKindFunction = { fg = C.coral },
		CmpItemKindFolder = { fg = C.coral },
		CmpItemKindModule = { fg = C.coral },
		CmpItemKindConstant = { fg = C.peach },
		CmpItemKindField = { fg = C.green },
		CmpItemKindProperty = { fg = C.green },
		CmpItemKindEnum = { fg = C.green },
		CmpItemKindUnit = { fg = C.green },
		CmpItemKindClass = { fg = C.yellow },
		CmpItemKindVariable = { fg = C.flamingo },
		CmpItemKindFile = { fg = C.coral },
		CmpItemKindInterface = { fg = C.yellow },
		CmpItemKindColor = { fg = C.red },
		CmpItemKindReference = { fg = C.red },
		CmpItemKindEnumMember = { fg = C.red },
		CmpItemKindStruct = { fg = C.coral },
		CmpItemKindValue = { fg = C.peach },
		CmpItemKindEvent = { fg = C.coral },
		CmpItemKindOperator = { fg = C.coral },
		CmpItemKindTypeParameter = { fg = C.coral },
		CmpItemKindCopilot = { fg = C.teal },
	}
end

return M

