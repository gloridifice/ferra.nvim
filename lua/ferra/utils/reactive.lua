local M = {}

function M.cursor(name, palette)
	return {
		name = name,
		init = function() vim.opt.guicursor:append "a:ReactiveCursor" end,
		modes = {
			n = {
				hl = {
					ReactiveCursor = { bg = palette.honey },
				},
			},
			i = {
				hl = {
					ReactiveCursor = { bg = palette.sage },
				},
			},
			no = {
				operators = {
					d = {
						hl = {
							ReactiveCursor = { bg = palette.ember },
						},
					},
					y = {
						hl = {
							ReactiveCursor = { bg = palette.coral },
						},
					},
					c = {
						hl = {
							ReactiveCursor = { bg = palette.blue },
						},
					},
				},
			},
			R = {
				hl = {
					ReactiveCursor = { bg = palette.mist },
				},
			},
			-- visual
			[{ "v", "V", "\x16" }] = {
				hl = {
					ReactiveCursor = { bg = palette.mauve },
				},
			},
			-- select
			[{ "s", "S", "\x13" }] = {
				hl = {
					ReactiveCursor = { bg = palette.rose },
				},
			},
		},
	}
end

function M.cursorline(name, palette)
	local darken = require("ferra.utils.colors").darken

	return {
		name = name,
		static = {
			winhl = {
				inactive = {
					CursorLine = { bg = darken(palette.surface0, 0.75) },
					CursorLineNr = { bg = darken(palette.surface0, 0.75) },
				},
			},
		},
		modes = {
			-- insert mode
			i = {
				winhl = {
					CursorLine = { bg = darken(palette.mist, 0.3) },
					CursorLineNr = { bg = darken(palette.mist, 0.3) },
				},
			},
			-- normal mode
			n = {
				winhl = {
					CursorLine = { bg = palette.surface0 },
					CursorLineNr = { bg = palette.surface0 },
				},
			},
			-- operator-pending mode
			no = {
				operators = {
					[{ "gu", "gU", "g~", "~" }] = {
						winhl = {
							CursorLine = { bg = palette.bg2 },
							CursorLineNr = { bg = palette.bg2 },
						},
					},
					-- delete operator
					d = {
						winhl = {
							CursorLine = { bg = darken(palette.ember, 0.4) },
							CursorLineNr = { bg = darken(palette.ember, 0.4) },
						},
					},
					-- yank operator
					y = {
						winhl = {
							CursorLine = { bg = darken(palette.coral, 0.3) },
							CursorLineNr = { bg = darken(palette.coral, 0.3) },
						},
					},
					-- change operator
					c = {
						winhl = {
							CursorLine = { bg = darken(palette.blue, 0.4) },
							CursorLineNr = { bg = darken(palette.blue, 0.4) },
						},
					},
				},
			},
			R = {
				winhl = {
					CursorLine = { bg = darken(palette.mist, 0.4) },
					CursorLineNr = { bg = darken(palette.mist, 0.4) },
				},
			},
			-- visual mode
			[{ "v", "V", "\x16" }] = {
				winhl = {
					Visual = { bg = darken(palette.mauve, 0.4) },
				},
			},
			-- select mode
			[{ "s", "S", "\x13" }] = {
				winhl = {
					Visual = { bg = darken(palette.rose, 0.4) },
				},
			},
		},
	}
end

return M

