local M = {}

M.url = "https://github.com/nvim-tree/nvim-tree.lua"

function M.get()
	return {
		NvimTreeFolderName = { fg = C.coral },
		NvimTreeFolderIcon = { fg = C.coral },
		NvimTreeNormal = { fg = C.text, bg = O.transparent_background and C.none or C.mantle },
		NvimTreeOpenedFolderName = { fg = C.coral },
		NvimTreeEmptyFolderName = { fg = C.coral },
		NvimTreeIndentMarker = { fg = C.overlay0 },
		NvimTreeWinSeparator = {
			fg = O.transparent_background and C.surface1 or C.base,
			bg = O.transparent_background and C.none or C.base,
		},
		NvimTreeRootFolder = { fg = C.lavender, style = { "bold" } },
		NvimTreeSymlink = { fg = C.pink },
		NvimTreeStatuslineNc = { fg = C.mantle, bg = C.mantle },
		NvimTreeGitDirty = { fg = C.yellow },
		NvimTreeGitNew = { fg = C.coral },
		NvimTreeGitDeleted = { fg = C.red },
		NvimTreeSpecialFile = { fg = C.flamingo },
		NvimTreeImageFile = { fg = C.text },
		NvimTreeOpenedFile = { fg = C.pink },
	}
end

return M

