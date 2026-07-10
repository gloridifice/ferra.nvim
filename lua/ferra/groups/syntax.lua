local M = {}

function M.get()
	local diff_add = { bg = U.darken(C.sage, 0.18, C.bgbase) }
	local diff_change = { bg = U.darken(C.coral, 0.07, C.bgbase) }
	local diff_delete = { bg = U.darken(C.ember, 0.18, C.bgbase) }
	local diff_text = { bg = U.darken(C.coral, 0.30, C.bgbase) }

	return {
		Comment = { fg = C.bg3, style = O.styles.comments }, -- just comments
		SpecialComment = { link = "Special" }, -- special things inside a comment
		Constant = { fg = C.coral }, -- (preferred) any constant
		String = { fg = C.sage, style = O.styles.strings or {} }, -- a string constant: "this is a string"
		Character = { fg = C.sage }, --  a character constant: 'c', '\n'
		Number = { fg = C.coral, style = O.styles.numbers or {} }, --   a number constant: 234, 0xff
		Float = { link = "Number" }, --    a floating point constant: 2.3e10
		Boolean = { fg = C.coral, style = O.styles.booleans or {} }, --  a boolean constant: TRUE, false
		Identifier = { fg = C.blush, style = O.styles.variables or {} }, -- (preferred) any variable name
		Function = { fg = C.coral, style = O.styles.functions or {} }, -- function name (also: methods for classes)
		Statement = { fg = C.mauve }, -- (preferred) any statement
		Conditional = { fg = C.mauve, style = O.styles.conditionals or {} }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = C.mauve, style = O.styles.loops or {} }, --   for, do, while, etc.
		Label = { fg = C.mist }, --    case, default, etc.
		Operator = { fg = C.mist, style = O.styles.operators or {} }, -- "sizeof", "+", "*", etc.
		Keyword = { fg = C.mauve, style = O.styles.keywords or {} }, --  any other keyword
		Exception = { fg = C.mauve, style = O.styles.keywords or {} }, --  try, catch, throw

		PreProc = { fg = C.rose }, -- (preferred) generic Preprocessor
		Include = { fg = C.mauve, style = O.styles.keywords or {} }, --  preprocessor #include
		Define = { link = "PreProc" }, -- preprocessor #define
		Macro = { fg = C.mauve }, -- same as Define
		PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = C.rose }, -- static, register, volatile, etc.
		Structure = { fg = C.rose }, --  struct, union, enum, etc.
		Special = { fg = C.rose }, -- (preferred) any special symbol
		Type = { fg = C.rose, style = O.styles.types or {} }, -- (preferred) int, long, char, etc.
		Typedef = { link = "Type" }, --  A typedef
		SpecialChar = { link = "Special" }, -- special character in a constant
		Tag = { fg = C.rose, style = { "bold" } }, -- you can use CTRL-] on this
		Delimiter = { fg = O.weaken_delimiters and C.bg3 or C.blush }, -- character that needs attention
		Debug = { link = "Special" }, -- debugging statements

		Underlined = { style = { "underline" } }, -- (preferred) text that stands out, HTML links
		Bold = { style = { "bold" } },
		Italic = { style = { "italic" } },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = C.ember }, -- (preferred) any erroneous construct
		Todo = { bg = C.coral, fg = C.bgbase, style = { "bold" } }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = C.honey },
		qfFileName = { fg = C.coral },
		htmlH1 = { fg = C.rose, style = { "bold" } },
		htmlH2 = { fg = C.coral, style = { "bold" } },
		-- mkdHeading = { fg = C.coral, style = { "bold" } },
		-- mkdCode = { bg = C.terminal_black, fg = C.blush },
		mkdCodeDelimiter = { bg = C.bgbase, fg = C.blush },
		mkdCodeStart = { fg = C.coral, style = { "bold" } },
		mkdCodeEnd = { fg = C.coral, style = { "bold" } },
		-- mkdLink = { fg = C.coral, style = { "underline" } },

		-- debugging
		debugPC = { bg = O.transparent_background and C.none or C.bgbase }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = C.bgbase, fg = C.bg3 }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = C.bg2 },
		illuminatedCurWord = { bg = C.bg2 },
		-- diff
		Added = { fg = C.sage },
		Changed = { fg = C.coral },
		diffAdded = { fg = C.sage },
		diffRemoved = { fg = C.ember },
		diffChanged = { fg = C.coral },
		diffOldFile = { fg = C.honey },
		diffNewFile = { fg = C.coral },
		diffFile = { fg = C.coral },
		diffLine = { fg = C.bg3 },
		diffIndexLine = { fg = C.sage },
		DiffAdd = diff_add, -- diff mode: Added line |diff.txt|
		DiffChange = diff_change, -- diff mode: Changed line |diff.txt|
		DiffDelete = diff_delete, -- diff mode: Deleted line |diff.txt|
		DiffText = diff_text, -- diff mode: Changed text within a changed line |diff.txt|

		DiffviewWinSeparator = { fg = C.bg3 },
		DiffviewDiffDelete = diff_delete,
		DiffviewFilePanelSelected = { fg = C.blush },

		DiffviewStatusAdded = diff_add,
		DiffviewStatusUntracked = diff_change,
		DiffviewStatusModified = diff_change,
		DiffviewStatusRenamed = diff_change,
		DiffviewStatusDeleted = diff_delete,
		DiffviewStatusIgnored = diff_text,

		-- NeoVim
		healthError = { fg = C.ember },
		healthSuccess = { fg = C.sage },
		healthWarning = { fg = C.honey },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = C.ember },
		GlyphPalette2 = { fg = C.sage },
		GlyphPalette3 = { fg = C.honey },
		GlyphPalette4 = { fg = C.coral },
		GlyphPalette6 = { fg = C.sage },
		GlyphPalette7 = { fg = C.blush },
		GlyphPalette9 = { fg = C.ember },

		-- rainbow
		rainbow1 = { fg = C.ember },
		rainbow2 = { fg = C.coral },
		rainbow3 = { fg = C.honey },
		rainbow4 = { fg = C.sage },
		rainbow5 = { fg = C.mist },
		rainbow6 = { fg = C.rose },

		-- csv
		csvCol0 = { fg = C.ember },
		csvCol1 = { fg = C.coral },
		csvCol2 = { fg = C.honey },
		csvCol3 = { fg = C.sage },
		csvCol4 = { fg = C.mist },
		csvCol5 = { fg = C.coral },
		csvCol6 = { fg = C.rose },
		csvCol7 = { fg = C.mauve },
		csvCol8 = { fg = C.rose },

		-- markdown
		markdownHeadingDelimiter = { fg = C.coral, style = { "bold" } },
		markdownCode = { fg = C.coral },
		markdownCodeBlock = { fg = C.coral },
		markdownLinkText = { fg = C.coral, style = { "underline" } },
		markdownH1 = { link = "rainbow1" },
		markdownH2 = { link = "rainbow2" },
		markdownH3 = { link = "rainbow3" },
		markdownH4 = { link = "rainbow4" },
		markdownH5 = { link = "rainbow5" },
		markdownH6 = { link = "rainbow6" },
	}
end

return M
