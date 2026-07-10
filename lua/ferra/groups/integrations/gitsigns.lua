local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

function M.get()
	-- (a ~= nil) and a or b: Potential false-negative handling
	local transparent = O.transparent_background
	if type(O.integrations.gitsigns.transparent) == "boolean" then transparent = O.integrations.gitsigns.transparent end

	if transparent then
		return {
			GitSignsAdd = { fg = C.sage }, -- diff mode: Added line |diff.txt|
			GitSignsChange = { fg = C.honey }, -- diff mode: Changed line |diff.txt|
			GitSignsDelete = { fg = C.ember }, -- diff mode: Deleted line |diff.txt|

			GitSignsCurrentLineBlame = { fg = C.bg2 },

			GitSignsAddPreview = { fg = C.sage, bg = C.none },
			GitSignsDeletePreview = { fg = C.ember, bg = C.none },

			-- for word diff in previews
			GitSignsAddInline = { fg = C.bgbase, bg = C.sage, style = { "bold" } },
			GitSignsDeleteInline = { fg = C.bgbase, bg = C.ember, style = { "bold" } },
			GitSignsChangeInline = { fg = C.bgbase, bg = C.coral, style = { "bold" } },

			GitSignsDeleteVirtLn = { bg = C.none, fg = C.ember },
		}
	else
		return {
			GitSignsAdd = { fg = C.sage }, -- diff mode: Added line |diff.txt|
			GitSignsChange = { fg = C.honey }, -- diff mode: Changed line |diff.txt|
			GitSignsDelete = { fg = C.ember }, -- diff mode: Deleted line |diff.txt|

			GitSignsCurrentLineBlame = { fg = C.bg2 },

			GitSignsAddPreview = { link = "DiffAdd" },
			GitSignsDeletePreview = { link = "DiffDelete" },

			GitSignsAddInline = { bg = U.darken(C.sage, 0.36, C.bgbase) },
			GitSignsChangeInline = { bg = U.darken(C.coral, 0.14, C.bgbase) },
			GitSignsDeleteInline = { bg = U.darken(C.ember, 0.36, C.bgbase) },
		}
	end
end

return M

