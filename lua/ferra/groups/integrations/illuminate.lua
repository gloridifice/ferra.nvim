local M = {}

M.url = "https://github.com/RRethy/vim-illuminate"

function M.get()
	return {
		IlluminatedWordText = { bg = U.darken(C.bg2, 0.7, C.bgbase) },
		IlluminatedWordRead = { bg = U.darken(C.bg2, 0.7, C.bgbase) },
		IlluminatedWordWrite = {
			bg = U.darken(C.bg2, 0.7, C.bgbase),
			style = O.integrations.illuminate.lsp and { "standout" } or {},
		},
	}
end

return M

