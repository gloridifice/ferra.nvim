local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

function M.get()
	return {
		FzfLuaNormal = { link = "NormalFloat" },
		FzfLuaBorder = { link = "FloatBorder" },
		FzfLuaTitle = { link = "FloatTitle" },
		FzfLuaHeaderBind = { fg = C.yellow },
		FzfLuaHeaderText = { fg = C.peach },
		FzfLuaDirPart = { link = "NonText" },
		FzfLuaFzfMatch = { fg = C.coral },
		FzfLuaFzfPrompt = { fg = C.coral },
		FzfLuaPathColNr = { fg = C.coral },
		FzfLuaPathLineNr = { fg = C.green },
		FzfLuaBufName = { fg = C.mauve },
		FzfLuaBufNr = { fg = C.yellow },
		FzfLuaBufFlagCur = { fg = C.peach },
		FzfLuaBufFlagAlt = { fg = C.coral },
		FzfLuaTabTitle = { fg = C.sky },
		FzfLuaTabMarker = { fg = C.yellow },
		FzfLuaLiveSym = { fg = C.peach },
	}
end

return M

