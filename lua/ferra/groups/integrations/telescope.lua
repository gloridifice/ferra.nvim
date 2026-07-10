local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

function M.get()
	local hlgroups = {
		TelescopeBorder = { link = "FloatBorder" },
		TelescopeNormal = { link = "NormalFloat" },
		TelescopePreviewNormal = { link = "TelescopeNormal" },
		TelescopePromptNormal = { link = "TelescopeNormal" },
		TelescopeResultsNormal = { link = "TelescopeNormal" },
		TelescopeTitle = { link = "FloatTitle" },
		TelescopeSelectionCaret = { fg = C.coral, bg = C.bg1 },
		TelescopeSelection = {
			fg = C.coral,
			bg = C.bg1,
			style = { "bold" },
		},
		TelescopeMatching = { fg = C.coral },
		TelescopePromptPrefix = { fg = C.coral },
	}

	if O.float.solid then
		hlgroups["TelescopePreviewTitle"] = {
			fg = C.bgbase,
			bg = C.sage,
		}
		hlgroups["TelescopePromptTitle"] = {
			fg = C.bgbase,
			bg = C.ember,
		}
		hlgroups["TelescopeResultsTitle"] = {
			fg = C.bgbase,
			bg = C.rose,
		}
	end

	return hlgroups
end

return M

