---@param colors_override (FerraIntegrationLualineOverride | FerraIntegrationLualineOverrideFn)?
---@param colors FerraColors<string>
local function get_colors(colors_override, colors)
	if colors_override == nil then
		return {}
	elseif type(colors_override) == "function" then
		return colors_override(colors)
	else
		return colors_override
	end
end
return function(flavour)
	flavour = flavour or require("ferra").flavour or vim.g.ferra_flavour or "ferra"
	local C = require("ferra.palettes").get_palette(flavour)
	local O = require("ferra").options

	local transparent_bg = O.transparent_background and "NONE" or C.bg1
	local default_colors = {
		normal = {
			a = { bg = C.coral, fg = C.bg1, gui = "bold" },
			b = { bg = C.bg1, fg = C.coral },
			c = { bg = transparent_bg, fg = C.blush },
		},

		insert = {
			a = { bg = C.sage, fg = C.bgbase, gui = "bold" },
			b = { bg = C.bg1, fg = C.sage },
		},

		terminal = {
			a = { bg = C.sage, fg = C.bgbase, gui = "bold" },
			b = { bg = C.bg1, fg = C.sage },
		},

		command = {
			a = { bg = C.coral, fg = C.bgbase, gui = "bold" },
			b = { bg = C.bg1, fg = C.coral },
		},
		visual = {
			a = { bg = C.mauve, fg = C.bgbase, gui = "bold" },
			b = { bg = C.bg1, fg = C.mauve },
		},
		replace = {
			a = { bg = C.ember, fg = C.bgbase, gui = "bold" },
			b = { bg = C.bg1, fg = C.ember },
		},
		inactive = {
			a = { bg = transparent_bg, fg = C.coral },
			b = { bg = transparent_bg, fg = C.bg2, gui = "bold" },
			c = { bg = transparent_bg, fg = C.bg3 },
		},
	}
	local overrides = O.integrations.lualine
	if overrides then
		local default_override = get_colors(overrides.all, C)
		local flavor_override = get_colors(overrides[flavour], C)
		return vim.tbl_deep_extend("force", default_colors, default_override, flavor_override)
	end
	return default_colors
end

