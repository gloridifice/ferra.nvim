local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

function M.get()
	return {
		DashboardShortCut = { fg = C.rose },
		DashboardHeader = { fg = C.coral },
		DashboardCenter = { fg = C.sage },
		DashboardFooter = { fg = C.honey, style = { "italic" } },
		DashboardMruTitle = { fg = C.mist },
		DashboardProjectTitle = { fg = C.mist },
		DashboardFiles = { fg = C.rose },
		DashboardKey = { fg = C.coral },
		DashboardDesc = { fg = C.coral },
		DashboardIcon = { fg = C.rose, bold = true },
	}
end

return M

