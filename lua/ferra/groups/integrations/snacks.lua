local M = {}

M.url = "https://github.com/folke/snacks.nvim"

function M.get()
	local indent_scope_color = O.integrations.snacks.indent_scope_color

	local hlgroups = {
		SnacksNormal = { link = "Normal" },
		SnacksWinBar = { link = "Title" },
		SnacksBackdrop = { link = "FloatShadow" },
		SnacksNormalNC = { link = "NormalFloat" },
		SnacksWinBarNC = { link = "SnacksWinBar" },

		SnacksNotifierInfo = { fg = C.coral },
		SnacksNotifierIconInfo = { fg = C.coral },
		SnacksNotifierTitleInfo = { fg = C.coral, style = { "italic" } },
		SnacksNotifierFooterInfo = { link = "DiagnosticInfo" },
		SnacksNotifierBorderInfo = { fg = C.coral },
		SnacksNotifierWarn = { fg = C.honey },
		SnacksNotifierIconWarn = { fg = C.honey },
		SnacksNotifierTitleWarn = { fg = C.honey, style = { "italic" } },
		SnacksNotifierBorderWarn = { fg = C.honey },
		SnacksNotifierFooterWarn = { link = "DiagnosticWarn" },
		SnacksNotifierDebug = { fg = C.coral },
		SnacksNotifierIconDebug = { fg = C.coral },
		SnacksNotifierTitleDebug = { fg = C.coral, style = { "italic" } },
		SnacksNotifierBorderDebug = { fg = C.coral },
		SnacksNotifierFooterDebug = { link = "DiagnosticHint" },
		SnacksNotifierError = { fg = C.ember },
		SnacksNotifierIconError = { fg = C.ember },
		SnacksNotifierTitleError = { fg = C.ember, style = { "italic" } },
		SnacksNotifierBorderError = { fg = C.ember },
		SnacksNotifierFooterError = { link = "DiagnosticError" },
		SnacksNotifierTrace = { fg = C.blush },
		SnacksNotifierIconTrace = { fg = C.blush },
		SnacksNotifierTitleTrace = { fg = C.blush, style = { "italic" } },
		SnacksNotifierBorderTrace = { fg = C.blush },
		SnacksNotifierFooterTrace = { link = "DiagnosticHint" },

		SnacksDashboardNormal = { link = "Normal" },
		SnacksDashboardDesc = { fg = C.coral },
		SnacksDashboardFile = { fg = C.rose },
		SnacksDashboardDir = { link = "NonText" },
		SnacksDashboardFooter = { fg = C.honey, style = { "italic" } },
		SnacksDashboardHeader = { fg = C.coral },
		SnacksDashboardIcon = { fg = C.rose, bold = true },
		SnacksDashboardKey = { fg = C.coral },
		SnacksDashboardTerminal = { link = "SnacksDashboardNormal" },
		SnacksDashboardSpecial = { link = "Special" },
		SnacksDashboardTitle = { link = "Title" },

		SnacksIndent = { fg = C.bg1 },
		SnacksIndentScope = { fg = C[indent_scope_color] or C.bg3 },

		SnacksPickerSelected = {
			fg = O.float.transparent and C.coral or C.blush,
			bg = O.float.transparent and C.none or C.bg1,
			style = { "bold" },
		},
		SnacksPickerMatch = { fg = C.coral },

		SnacksPicker = { link = "NormalFloat" },
		SnacksPickerBorder = { link = "FloatBorder" },
		SnacksPickerInputBorder = { link = "SnacksPickerBorder" },
		SnacksPickerInput = { link = "NormalFloat" },
		SnacksPickerPrompt = { fg = C.coral },
	}

	if O.float.solid then
		hlgroups["SnacksPickerTitle"] = {
			fg = C.bgbase,
			bg = C.mauve,
		}
		hlgroups["SnacksPickerPreviewTitle"] = {
			fg = C.bgbase,
			bg = C.sage,
		}
		hlgroups["SnacksPickerInputTitle"] = {
			fg = C.bgbase,
			bg = C.ember,
		}
		hlgroups["SnacksPickerListTitle"] = {
			fg = C.bgbase,
			bg = C.rose,
		}
	end

	return hlgroups
end

return M

