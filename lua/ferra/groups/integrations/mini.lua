local M = {}

M.url = "https://github.com/echasnovski/mini.nvim"

function M.get()
	local transparent_background = require("ferra").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or C.bgbase

	local inactive_bg = transparent_background and "NONE" or C.bg1

	local indentscope_color = O.integrations.mini.indentscope_color
	return {
		MiniAnimateCursor = { style = { "reverse", "nocombine" } },
		MiniAnimateNormalFloat = { link = "NormalFloat" },

		MiniClueBorder = { link = "FloatBorder" },
		MiniClueDescGroup = { link = "DiagnosticFloatingWarn" },
		MiniClueDescSingle = { link = "NormalFloat" },
		MiniClueNextKey = { link = "DiagnosticFloatingHint" },
		MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
		MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
		MiniClueTitle = { link = "FloatTitle" },

		MiniCompletionActiveParameter = { style = { "underline" } },

		MiniCursorword = { bg = C.bg1, style = { "bold" } },
		MiniCursorwordCurrent = { bg = C.bg1, style = { "bold" } },

		MiniDepsChangeAdded = { link = "diffAdded" },
		MiniDepsChangeRemoved = { link = "diffRemoved" },
		MiniDepsHint = { link = "DiagnosticHint" },
		MiniDepsInfo = { link = "DiagnosticInfo" },
		MiniDepsMsgBreaking = { link = "DiagnosticWarn" },
		MiniDepsPlaceholder = { link = "Comment" },
		MiniDepsTitle = { link = "Title" },
		MiniDepsTitleError = { bg = C.ember, fg = C.bgbase },
		MiniDepsTitleSame = { link = "DiffText" },
		MiniDepsTitleUpdate = { bg = C.sage, fg = C.bgbase },

		MiniDiffSignAdd = { fg = C.sage },
		MiniDiffSignChange = { fg = C.honey },
		MiniDiffSignDelete = { fg = C.ember },
		MiniDiffOverAdd = { link = "DiffAdd" },
		MiniDiffOverChange = { link = "DiffText" },
		MiniDiffOverContext = { link = "DiffChange" },
		MiniDiffOverDelete = { link = "DiffDelete" },

		MiniFilesBorder = { link = "FloatBorder" },
		MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
		MiniFilesCursorLine = { link = "CursorLine" },
		MiniFilesDirectory = { link = "Directory" },
		MiniFilesFile = { fg = C.blush },
		MiniFilesNormal = { link = "NormalFloat" },
		MiniFilesTitle = { link = "FloatTitle" },
		MiniFilesTitleFocused = O.float.solid and {
			fg = C.bgbase,
			bg = C.mauve,
		} or {
			fg = C.mist,
			bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.bg1,
			style = { "bold" },
		},

		MiniHipatternsFixme = { fg = C.bgbase, bg = C.ember, style = { "bold" } },
		MiniHipatternsHack = { fg = C.bgbase, bg = C.honey, style = { "bold" } },
		MiniHipatternsNote = { fg = C.bgbase, bg = C.mist, style = { "bold" } },
		MiniHipatternsTodo = { fg = C.bgbase, bg = C.sage, style = { "bold" } },

		MiniIconsAzure = { fg = C.mist },
		MiniIconsBlue = { fg = C.coral },
		MiniIconsCyan = { fg = C.sage },
		MiniIconsGreen = { fg = C.sage },
		MiniIconsGrey = { fg = C.blush },
		MiniIconsOrange = { fg = C.coral },
		MiniIconsPurple = { fg = C.mauve },
		MiniIconsRed = { fg = C.ember },
		MiniIconsYellow = { fg = C.honey },

		MiniIndentscopeSymbol = { fg = C[indentscope_color] or C.bg3 },

		MiniJump = { fg = C.bg3, bg = C.rose },

		MiniJump2dDim = { fg = C.bg3 },
		MiniJump2dSpot = { bg = C.bgbase, fg = C.coral, style = { "bold", "underline" } },
		MiniJump2dSpotAhead = { bg = C.dim, fg = C.sage },
		MiniJump2dSpotUnique = { bg = C.bgbase, fg = C.mist, style = { "bold" } },

		MiniMapNormal = { link = "NormalFloat" },
		MiniMapSymbolCount = { link = "Special" },
		MiniMapSymbolLine = { link = "Title" },
		MiniMapSymbolView = { link = "Delimiter" },

		MiniNotifyBorder = { link = "FloatBorder" },
		MiniNotifyNormal = { link = "NormalFloat" },
		MiniNotifyTitle = { link = "FloatTitle" },

		MiniOperatorsExchangeFrom = { link = "IncSearch" },

		MiniPickBorder = { link = "FloatBorder" },
		MiniPickBorderBusy = { link = "DiagnosticFloatingWarn" },
		MiniPickBorderText = O.float.solid and {
			fg = C.bgbase,
			bg = C.mauve,
		} or { fg = C.mauve, bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.bg1 },
		MiniPickIconDirectory = { link = "Directory" },
		MiniPickIconFile = { link = "MiniPickNormal" },
		MiniPickHeader = { link = "DiagnosticFloatingHint" },
		MiniPickMatchCurrent = {
			fg = C.coral,
			bg = C.bg1,
			style = { "bold" },
		},
		MiniPickMatchMarked = { link = "Visual" },
		MiniPickMatchRanges = { link = "DiagnosticFloatingHint" },
		MiniPickNormal = { link = "NormalFloat" },
		MiniPickPreviewLine = { link = "CursorLine" },
		MiniPickPreviewRegion = { link = "IncSearch" },
		MiniPickPrompt = { fg = C.blush, bg = O.float.transparent and C.none or C.bg1 },
		MiniPickPromptCaret = {
			fg = C.coral,
			bg = O.float.transparent and C.none or C.bg1,
		},
		MiniPickPromptPrefix = {
			fg = C.coral,
			bg = O.float.transparent and C.none or C.bg1,
		},

		MiniStarterCurrent = {},
		MiniStarterFooter = { fg = C.honey, style = { "italic" } },
		MiniStarterHeader = { fg = C.coral },
		MiniStarterInactive = { fg = C.bg2, style = O.styles.comments },
		MiniStarterItem = { fg = C.blush },
		MiniStarterItemBullet = { fg = C.coral },
		MiniStarterItemPrefix = { fg = C.rose },
		MiniStarterSection = { fg = C.coral },
		MiniStarterQuery = { fg = C.sage },

		MiniStatuslineDevinfo = { fg = C.blush, bg = C.bg2 },
		MiniStatuslineFileinfo = { fg = C.blush, bg = C.bg2 },
		MiniStatuslineFilename = { fg = C.blush, bg = C.bg1 },
		MiniStatuslineInactive = { fg = C.coral, bg = C.bg1 },
		MiniStatuslineModeCommand = { fg = C.bgbase, bg = C.coral, style = { "bold" } },
		MiniStatuslineModeInsert = { fg = C.bgbase, bg = C.sage, style = { "bold" } },
		MiniStatuslineModeNormal = { fg = C.bg1, bg = C.coral, style = { "bold" } },
		MiniStatuslineModeOther = { fg = C.bgbase, bg = C.sage, style = { "bold" } },
		MiniStatuslineModeReplace = { fg = C.bgbase, bg = C.ember, style = { "bold" } },
		MiniStatuslineModeVisual = { fg = C.bgbase, bg = C.mauve, style = { "bold" } },

		MiniSurround = { bg = C.rose, fg = C.bg2 },

		MiniTablineCurrent = { fg = C.blush, bg = C.none, sp = C.ember, style = { "bold", "italic" } },
		MiniTablineFill = { bg = C.bgbase },
		MiniTablineHidden = { fg = C.bg3, bg = C.bgbase },
		MiniTablineModifiedCurrent = { fg = C.ember, bg = inactive_bg, style = { "bold", "italic" } },
		MiniTablineModifiedHidden = { fg = C.ember, bg = C.bgbase },
		MiniTablineModifiedVisible = { fg = C.ember, bg = C.bgbase },
		MiniTablineTabpagesection = { fg = C.bg2, bg = C.bgbase },
		MiniTablineVisible = { fg = C.bg3, bg = C.bgbase },

		MiniTestEmphasis = { style = { "bold" } },
		MiniTestFail = { fg = C.ember, style = { "bold" } },
		MiniTestPass = { fg = C.sage, style = { "bold" } },

		MiniTrailspace = { bg = C.ember },
	}
end

return M
