local M = {}

M.url = "https://github.com/folke/which-key.nvim"

function M.get()
	return {
		WhichKey = { link = "NormalFloat" },
		WhichKeyBorder = { link = "FloatBorder" },

		WhichKeyGroup = { fg = C.coral },
		WhichKeySeparator = { fg = C.bg3 },
		WhichKeyDesc = { fg = C.rose },
		WhichKeyValue = { fg = C.bg3 },
	}
end

return M

