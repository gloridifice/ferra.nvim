local M = {}

M.url = "https://github.com/lukas-reineke/headlines.nvim"

function M.get()
	return {
		Dash = { fg = C.bg3, style = { "bold" } },
		Quote = { link = "@markup.strong" },
		CodeBlock = { bg = C.bg1 },
		Headline = { link = "Headline1" },
		Headline1 = { bg = C.bg1, fg = C.ember },
		Headline2 = { bg = C.bg1, fg = C.coral },
		Headline3 = { bg = C.bg1, fg = C.honey },
		Headline4 = { bg = C.bg1, fg = C.sage },
		Headline5 = { bg = C.bg1, fg = C.mist },
		Headline6 = { bg = C.bg1, fg = C.rose },
	}
end

return M

