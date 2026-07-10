local M = {}

M.url = "https://github.com/saghen/blink.indent"

function M.get()
	return {
		BlinkIndent = { fg = C.bg1 },
		BlinkIndentScope = { fg = C.bg3 },

		BlinkIndentRed = { fg = C.ember },
		BlinkIndentOrange = { fg = C.coral },
		BlinkIndentYellow = { fg = C.honey },
		BlinkIndentGreen = { fg = C.sage },
		BlinkIndentCyan = { fg = C.mist },
		BlinkIndentBlue = { fg = C.coral },
		BlinkIndentViolet = { fg = C.mauve },

		BlinkIndentRedUnderline = { sp = C.ember, style = { "underline" } },
		BlinkIndentOrangeUnderline = { sp = C.coral, style = { "underline" } },
		BlinkIndentYellowUnderline = { sp = C.honey, style = { "underline" } },
		BlinkIndentGreenUnderline = { sp = C.sage, style = { "underline" } },
		BlinkIndentCyanUnderline = { sp = C.mist, style = { "underline" } },
		BlinkIndentBlueUnderline = { sp = C.coral, style = { "underline" } },
		BlinkIndentVioletUnderline = { sp = C.mauve, style = { "underline" } },
	}
end

return M

