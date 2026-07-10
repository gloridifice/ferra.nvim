local M = {}

M.url = "https://github.com/airblade/vim-gitgutter"

function M.get()
	return {
		GitGutterAdd = { fg = C.sage },
		GitGutterChange = { fg = C.honey },
		GitGutterDelete = { fg = C.ember },
		GitGutterAddLineNr = { fg = C.sage },
		GitGutterChangeLineNr = { fg = C.honey },
		GitGutterDeleteLineNr = { fg = C.ember },
	}
end

return M

