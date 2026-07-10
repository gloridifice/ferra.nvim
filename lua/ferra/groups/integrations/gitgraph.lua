local M = {}

M.url = "https://github.com/isakbm/gitgraph.nvim"

function M.get()
	return {
		GitGraphHash = { fg = C.mauve },
		GitGraphTimestamp = { fg = C.rose },
		GitGraphAuthor = { fg = C.coral },
		GitGraphBranchName = { fg = C.sage },
		GitGraphBranchTag = { fg = C.rose },
		GitGraphBranchMsg = { fg = C.bg3 },
		GitGraphBranch1 = { fg = C.honey },
		GitGraphBranch2 = { fg = C.rose },
		GitGraphBranch3 = { fg = C.mist },
		GitGraphBranch4 = { fg = C.sage },
		GitGraphBranch5 = { fg = C.ember },
	}
end

return M

