local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

function M.get()
	return {
		VimwikiLink = { fg = C.mist, bg = C.none },
		VimwikiHeaderChar = { fg = C.grey, bg = C.none },
		VimwikiHR = { fg = C.honey, bg = C.none },
		VimwikiList = { fg = C.coral, bg = C.none },
		VimwikiTag = { fg = C.coral, bg = C.none },
		VimwikiMarkers = { fg = C.mist, bg = C.none },
		VimwikiHeader1 = { fg = C.coral, bg = C.none, style = { "bold" } },
		VimwikiHeader2 = { fg = C.sage, bg = C.none, style = { "bold" } },
		VimwikiHeader3 = { fg = C.coral, bg = C.none, style = { "bold" } },
		VimwikiHeader4 = { fg = C.mist, bg = C.none, style = { "bold" } },
		VimwikiHeader5 = { fg = C.honey, bg = C.none, style = { "bold" } },
		VimwikiHeader6 = { fg = C.mauve, bg = C.none, style = { "bold" } },
	}
end

return M

