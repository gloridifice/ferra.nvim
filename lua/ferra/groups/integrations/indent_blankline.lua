local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

function M.get()
	local scope_color = O.integrations.indent_blankline.scope_color

	local hi = {
		IblIndent = { fg = C.bg1 },
		IblScope = { fg = C[scope_color] or C.blush },
	}

	if O.integrations.indent_blankline.colored_indent_levels then
		hi["RainbowRed"] = { blend = 0, fg = C.ember }
		hi["RainbowYellow"] = { blend = 0, fg = C.honey }
		hi["RainbowBlue"] = { blend = 0, fg = C.coral }
		hi["RainbowOrange"] = { blend = 0, fg = C.coral }
		hi["RainbowGreen"] = { blend = 0, fg = C.sage }
		hi["RainbowViolet"] = { blend = 0, fg = C.mauve }
		hi["RainbowCyan"] = { blend = 0, fg = C.sage }
	end

	return hi
end

return M

