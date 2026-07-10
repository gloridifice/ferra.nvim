local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

function M.get()
	return {
		FzfLuaNormal = { link = "NormalFloat" },
		FzfLuaBorder = { link = "FloatBorder" },
		FzfLuaTitle = { link = "FloatTitle" },
		FzfLuaHeaderBind = { fg = C.honey },
		FzfLuaHeaderText = { fg = C.coral },
		FzfLuaDirPart = { link = "NonText" },
		FzfLuaFzfMatch = { fg = C.coral },
		FzfLuaFzfPrompt = { fg = C.coral },
		FzfLuaPathColNr = { fg = C.coral },
		FzfLuaPathLineNr = { fg = C.sage },
		FzfLuaBufName = { fg = C.mauve },
		FzfLuaBufNr = { fg = C.honey },
		FzfLuaBufFlagCur = { fg = C.coral },
		FzfLuaBufFlagAlt = { fg = C.coral },
		FzfLuaTabTitle = { fg = C.mist },
		FzfLuaTabMarker = { fg = C.honey },
		FzfLuaLiveSym = { fg = C.coral },
	}
end

return M

