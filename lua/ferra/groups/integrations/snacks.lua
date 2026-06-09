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
		SnacksNotifierWarn = { fg = C.yellow },
		SnacksNotifierIconWarn = { fg = C.yellow },
		SnacksNotifierTitleWarn = { fg = C.yellow, style = { "italic" } },
		SnacksNotifierBorderWarn = { fg = C.yellow },
		SnacksNotifierFooterWarn = { link = "DiagnosticWarn" },
		SnacksNotifierDebug = { fg = C.peach },
		SnacksNotifierIconDebug = { fg = C.peach },
		SnacksNotifierTitleDebug = { fg = C.peach, style = { "italic" } },
		SnacksNotifierBorderDebug = { fg = C.peach },
		SnacksNotifierFooterDebug = { link = "DiagnosticHint" },
		SnacksNotifierError = { fg = C.red },
		SnacksNotifierIconError = { fg = C.red },
		SnacksNotifierTitleError = { fg = C.red, style = { "italic" } },
		SnacksNotifierBorderError = { fg = C.red },
		SnacksNotifierFooterError = { link = "DiagnosticError" },
		SnacksNotifierTrace = { fg = C.rosewater },
		SnacksNotifierIconTrace = { fg = C.rosewater },
		SnacksNotifierTitleTrace = { fg = C.rosewater, style = { "italic" } },
		SnacksNotifierBorderTrace = { fg = C.rosewater },
		SnacksNotifierFooterTrace = { link = "DiagnosticHint" },

		SnacksDashboardNormal = { link = "Normal" },
		SnacksDashboardDesc = { fg = C.coral },
		SnacksDashboardFile = { fg = C.lavender },
		SnacksDashboardDir = { link = "NonText" },
		SnacksDashboardFooter = { fg = C.yellow, style = { "italic" } },
		SnacksDashboardHeader = { fg = C.coral },
		SnacksDashboardIcon = { fg = C.pink, bold = true },
		SnacksDashboardKey = { fg = C.peach },
		SnacksDashboardTerminal = { link = "SnacksDashboardNormal" },
		SnacksDashboardSpecial = { link = "Special" },
		SnacksDashboardTitle = { link = "Title" },

		SnacksIndent = { fg = C.surface0 },
		SnacksIndentScope = { fg = C[indent_scope_color] or C.overlay2 },

		SnacksPickerSelected = {
			fg = O.float.transparent and C.flamingo or C.text,
			bg = O.float.transparent and C.none or C.surface0,
			style = { "bold" },
		},
		SnacksPickerMatch = { fg = C.coral },

		SnacksPicker = { link = "NormalFloat" },
		SnacksPickerBorder = { link = "FloatBorder" },
		SnacksPickerInputBorder = { link = "SnacksPickerBorder" },
		SnacksPickerInput = { link = "NormalFloat" },
		SnacksPickerPrompt = { fg = C.flamingo },
	}

	if O.float.solid then
		hlgroups["SnacksPickerTitle"] = {
			fg = C.crust,
			bg = C.mauve,
		}
		hlgroups["SnacksPickerPreviewTitle"] = {
			fg = C.crust,
			bg = C.green,
		}
		hlgroups["SnacksPickerInputTitle"] = {
			fg = C.crust,
			bg = C.red,
		}
		hlgroups["SnacksPickerListTitle"] = {
			fg = C.crust,
			bg = C.lavender,
		}
	end

	return hlgroups
end

return M

