local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

function M.get()
	return {
		LeapMatch = {
			fg = O.transparent_background and C.rose or U.brighten(C.sage, 0.3),
			style = { "underline", "nocombine", O.transparent_background and "bold" or nil },
		},
		LeapLabel = {
			fg = O.transparent_background and C.sage or C.bgbase,
			bg = O.transparent_background and C.none
				or U.brighten(C.sage, 0.3),
			style = { "nocombine", O.transparent_background and "bold" or nil },
		},
		LeapBackdrop = { fg = O.transparent_background and C.bg3 or C.none },
	}
end

return M

