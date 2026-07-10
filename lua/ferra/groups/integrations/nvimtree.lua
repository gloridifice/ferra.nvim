local M = {}

M.url = "https://github.com/nvim-tree/nvim-tree.lua"

function M.get()
	return {
		NvimTreeFolderName = { fg = C.coral },
		NvimTreeFolderIcon = { fg = C.coral },
		NvimTreeNormal = { fg = C.blush, bg = O.transparent_background and C.none or C.bg1 },
		NvimTreeOpenedFolderName = { fg = C.coral },
		NvimTreeEmptyFolderName = { fg = C.coral },
		NvimTreeIndentMarker = { fg = C.bg3 },
		NvimTreeWinSeparator = {
			fg = O.transparent_background and C.bg2 or C.bgbase,
			bg = O.transparent_background and C.none or C.bgbase,
		},
		NvimTreeRootFolder = { fg = C.rose, style = { "bold" } },
		NvimTreeSymlink = { fg = C.rose },
		NvimTreeStatuslineNc = { fg = C.bg1, bg = C.bg1 },
		NvimTreeGitDirty = { fg = C.honey },
		NvimTreeGitNew = { fg = C.coral },
		NvimTreeGitDeleted = { fg = C.ember },
		NvimTreeSpecialFile = { fg = C.coral },
		NvimTreeImageFile = { fg = C.blush },
		NvimTreeOpenedFile = { fg = C.rose },
	}
end

return M

