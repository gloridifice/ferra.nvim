local M = {}

M.url = "https://github.com/folke/noice.nvim"

local virtual_text = O.lsp_styles.virtual_text

function M.get()
	return { -- Personally the default integration is already pretty good
		NoiceCmdline = { fg = C.blush },
		NoiceCmdlineIcon = { fg = C.mist, style = virtual_text.information },
		NoiceCmdlineIconSearch = { fg = C.honey },
		NoiceCmdlinePopupBorder = { fg = C.rose },
		NoiceCmdlinePopupBorderSearch = { fg = C.honey },
		NoiceConfirmBorder = { fg = C.coral },
		NoiceMini = { fg = C.mist, blend = 0 },
		NoiceFormatProgressDone = {
			bg = O.transparent_background and C.none or U.darken(C.mist, 0.30, C.bgbase),
			fg = C.mist,
		},
		NoiceFormatProgressTodo = {
			bg = O.transparent_background and C.none
				or U.darken(C.bg1, 0.64, C.bgbase),
			fg = C.mist,
		},
	}
end

return M

