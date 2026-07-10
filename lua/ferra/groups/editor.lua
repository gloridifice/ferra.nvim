local M = {}

function M.get()
	local pumsolid = O.float.solid
	if vim.fn.has "nvim-0.12" == 1 then pumsolid = vim.o.pumborder == "solid" end

	return {
		ColorColumn = { bg = C.bg1 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = C.bg3 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = C.bgbase, bg = C.blush }, -- character under the cursor
		lCursor = { fg = C.bgbase, bg = C.blush }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = C.bgbase, bg = C.blush }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = C.bg1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = {
			bg = U.darken(C.bg1, 0.64, C.bgbase),
		}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
		Dimmed = { fg = C.bg3 },
		Directory = { fg = C.coral }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = C.bg2 }, -- filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = C.ember, style = { "bold", "italic" } }, -- error messages on the command line
		VertSplit = { fg = O.transparent_background and C.bg2 or C.bgbase }, -- the column separating vertically split windows
		Folded = { fg = C.coral, bg = O.transparent_background and C.none or C.bg2 }, -- line used for closed folds
		FoldColumn = { fg = C.bg3 }, -- 'foldcolumn'
		SignColumn = { fg = C.bg2 }, -- column where |signs| are displayed
		SignColumnSB = { bg = C.bgbase, fg = C.bg2 }, -- column where |signs| are displayed
		Substitute = { bg = C.bg2, fg = C.rose }, -- |:substitute| replacement text highlighting
		LineNr = { fg = C.bg2 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = C.rose }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = C.coral, bg = U.darken(C.bg2, 0.70, C.bgbase), style = { "bold" } }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = C.blush, style = { "bold" } }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea = { fg = C.blush }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
		MsgSeparator = { link = "WinSeparator" }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = C.coral }, -- |more-prompt|
		NonText = { fg = C.bg3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = C.blush, bg = O.transparent_background and C.none or C.bgbase }, -- normal text
		NormalNC = {
			fg = C.blush,
			bg = (O.transparent_background and O.dim_inactive.enabled and C.dim)
				or (O.dim_inactive.enabled and C.dim)
				or (O.transparent_background and C.none)
				or C.bgbase,
		}, -- normal text in non-current windows
		NormalSB = { fg = C.blush, bg = C.bgbase }, -- normal text in non-current windows
		NormalFloat = { fg = C.blush, bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.bg1 }, -- Normal text in floating windows.
		FloatBorder = O.float.solid
				and ((O.float.transparent and vim.o.winblend == 0) and { fg = C.bg2, bg = C.none } or {
					fg = C.bg1,
					bg = C.bg1,
				})
			or { fg = C.coral, bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.bg1 },
		FloatTitle = O.float.solid and {
			fg = C.bgbase,
			bg = C.rose,
		} or { fg = C.mist, bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.bg1 }, -- Title of floating windows
		FloatShadow = { bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.bg3, blend = 80 },
		FloatShadowThrough = {
			bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.bg3,
			blend = 100,
		},
		Pmenu = {
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none or C.bg1,
			fg = C.bg3,
		}, -- Popup menu: normal item.
		PmenuBorder = {
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none or C.bg1,
			fg = pumsolid and ((O.transparent_background and vim.o.pumblend == 0) and C.none or C.bg1) or C.coral,
		}, -- Popup menu: border
		PmenuSel = { bg = C.bg1, style = { "bold" } }, -- Popup menu: selected item.
		PmenuMatch = { fg = C.blush, style = { "bold" } }, -- Popup menu: matching text.
		PmenuMatchSel = { style = { "bold" } }, -- Popup menu: matching text in selected item; is combined with |hl-PmenuMatch| and |hl-PmenuSel|.
		PmenuSbar = { bg = C.bg1 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = C.bg3 }, -- Popup menu: Thumb of the scrollbar.
		PmenuExtra = { fg = C.bg3 }, -- Popup menu: normal item extra text.
		PmenuExtraSel = {
			bg = C.bg1,
			fg = C.bg3,
			style = { "bold" },
		}, -- Popup menu: selected item extra text.
		ComplMatchIns = { link = "PreInsert" }, -- Matched text of the currently inserted completion.
		PreInsert = { fg = C.bg3 }, -- Text inserted when "preinsert" is in 'completeopt'.
		ComplHint = { fg = C.mist }, -- Virtual text of the currently selected completion.
		ComplHintMore = { link = "Question" }, -- The additional information of the virtual text.
		Question = { fg = C.coral }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = U.darken(C.bg2, 0.70, C.bgbase), style = { "bold" } }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = U.darken(C.mist, 0.30, C.bgbase), fg = C.blush }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { bg = U.darken(C.mist, 0.90, C.bgbase), fg = C.bg1 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { bg = C.ember, fg = C.bg1 }, -- 'cursearch' highlighting: highlights the current search you're on differently
		SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
		SpellBad = { sp = C.ember, style = { "undercurl" } }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = C.honey, style = { "undercurl" } }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = C.coral, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = C.sage, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = C.blush, bg = O.transparent_background and C.none or C.bg1 }, -- status line of current window
		StatusLineNC = { fg = C.bg2, bg = O.transparent_background and C.none or C.bg1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = C.bgbase, fg = C.bg3 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = O.transparent_background and C.none or C.bg1 }, -- tab pages line, where there are no labels
		TabLineSel = { link = "Normal" }, -- tab pages line, active tab page label
		TermCursor = { fg = C.bgbase, bg = C.blush }, -- cursor in a focused terminal
		TermCursorNC = { fg = C.bgbase, bg = C.bg3 }, -- cursor in unfocused terminals
		Title = { fg = C.coral, style = { "bold" } }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = C.bg2, style = { "bold" } }, -- Visual mode selection
		VisualNOS = { bg = C.bg2, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = C.honey }, -- warning messages
		Whitespace = { fg = C.bg2 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = C.bg3 }, -- current match in 'wildmenu' completion
		WinBar = { fg = C.blush },
		WinBarNC = { link = "WinBar" },
		WinSeparator = { fg = O.transparent_background and C.bg2 or C.bgbase },
	}
end

return M

