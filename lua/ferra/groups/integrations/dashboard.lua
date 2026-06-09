local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

function M.get()
	return {
		DashboardShortCut = { fg = C.pink },
		DashboardHeader = { fg = C.coral },
		DashboardCenter = { fg = C.green },
		DashboardFooter = { fg = C.yellow, style = { "italic" } },
		DashboardMruTitle = { fg = C.sky },
		DashboardProjectTitle = { fg = C.sky },
		DashboardFiles = { fg = C.lavender },
		DashboardKey = { fg = C.peach },
		DashboardDesc = { fg = C.coral },
		DashboardIcon = { fg = C.pink, bold = true },
	}
end

return M

