local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

function M.get()
	return {
		BufferCurrent = { bg = C.surface1, fg = C.text },
		BufferCurrentIndex = { bg = C.surface1, fg = C.coral },
		BufferCurrentMod = { bg = C.surface1, fg = C.yellow },
		BufferCurrentSign = { bg = C.surface1, fg = C.coral },
		BufferCurrentTarget = { bg = C.surface1, fg = C.red },
		BufferVisible = { bg = C.mantle, fg = C.text },
		BufferVisibleIndex = { bg = C.mantle, fg = C.coral },
		BufferVisibleMod = { bg = C.mantle, fg = C.yellow },
		BufferVisibleSign = { bg = C.mantle, fg = C.coral },
		BufferVisibleTarget = { bg = C.mantle, fg = C.red },
		BufferInactive = { bg = C.mantle, fg = C.overlay0 },
		BufferInactiveIndex = { bg = C.mantle, fg = C.overlay0 },
		BufferInactiveMod = { bg = C.mantle, fg = C.yellow },
		BufferInactiveSign = { bg = C.mantle, fg = C.coral },
		BufferInactiveTarget = { bg = C.mantle, fg = C.red },
		BufferTabpages = { bg = C.mantle, fg = C.none },
		BufferTabpage = { bg = C.mantle, fg = C.coral },
	}
end

return M

