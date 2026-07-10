local M = {}

M.url = "https://github.com/ThePrimeagen/harpoon"

function M.get()
	return {
		HarpoonWindow = { fg = C.blush, bg = O.transparent_background and C.none or C.bgbase },
		HarpoonBorder = { fg = C.coral },
	}
end

return M

