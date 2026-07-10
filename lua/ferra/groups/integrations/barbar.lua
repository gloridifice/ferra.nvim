local M = {}

M.url = "https://github.com/romgrk/barbar.nvim"

function M.get()
	return {
		BufferCurrent = { bg = C.bg2, fg = C.blush },
		BufferCurrentIndex = { bg = C.bg2, fg = C.coral },
		BufferCurrentMod = { bg = C.bg2, fg = C.honey },
		BufferCurrentSign = { bg = C.bg2, fg = C.coral },
		BufferCurrentTarget = { bg = C.bg2, fg = C.ember },
		BufferVisible = { bg = C.bg1, fg = C.blush },
		BufferVisibleIndex = { bg = C.bg1, fg = C.coral },
		BufferVisibleMod = { bg = C.bg1, fg = C.honey },
		BufferVisibleSign = { bg = C.bg1, fg = C.coral },
		BufferVisibleTarget = { bg = C.bg1, fg = C.ember },
		BufferInactive = { bg = C.bg1, fg = C.bg3 },
		BufferInactiveIndex = { bg = C.bg1, fg = C.bg3 },
		BufferInactiveMod = { bg = C.bg1, fg = C.honey },
		BufferInactiveSign = { bg = C.bg1, fg = C.coral },
		BufferInactiveTarget = { bg = C.bg1, fg = C.ember },
		BufferTabpages = { bg = C.bg1, fg = C.none },
		BufferTabpage = { bg = C.bg1, fg = C.coral },
	}
end

return M

