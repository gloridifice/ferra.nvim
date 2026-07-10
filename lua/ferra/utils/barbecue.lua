return function(flavour)
	local C = require("ferra.palettes").get_palette(flavour)
	local O = require("ferra").options

	local transparent_bg = O.transparent_background and C.none or C.bg1

	local dirname_color = O.integrations.barbecue.dim_dirname and C.bg3 or C.blush
	local basename_bold = O.integrations.barbecue.bold_basename
	local context_color = O.integrations.barbecue.dim_context and C.bg3 or C.blush
	local background_color = O.integrations.barbecue.alt_background and transparent_bg or C.none

	local M = {
		normal = { fg = C.blush, bg = background_color },

		ellipsis = { fg = C.bg3 },
		separator = { fg = C.bg3 },
		modified = { fg = C.coral },

		dirname = { fg = dirname_color },
		basename = { fg = C.blush, bold = basename_bold },
		context = { fg = context_color },

		-- Same keys as navic
		context_file = { fg = C.coral },
		context_module = { fg = C.coral },
		context_namespace = { fg = C.coral },
		context_package = { fg = C.coral },
		context_class = { fg = C.honey },
		context_method = { fg = C.coral },
		context_property = { fg = C.sage },
		context_field = { fg = C.sage },
		context_constructor = { fg = C.coral },
		context_enum = { fg = C.sage },
		context_interface = { fg = C.honey },
		context_function = { fg = C.coral },
		context_variable = { fg = C.coral },
		context_constant = { fg = C.coral },
		context_string = { fg = C.sage },
		context_number = { fg = C.coral },
		context_boolean = { fg = C.coral },
		context_array = { fg = C.coral },
		context_object = { fg = C.coral },
		context_key = { fg = C.coral },
		context_null = { fg = C.coral },
		context_enum_member = { fg = C.ember },
		context_struct = { fg = C.coral },
		context_event = { fg = C.coral },
		context_operator = { fg = C.coral },
		context_type_parameter = { fg = C.coral },
	}

	return M
end

