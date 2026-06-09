local M = {}

M.url = "https://github.com/SmiteshP/nvim-navic"

function M.get()
	local background = O.integrations.navic.custom_bg and O.integrations.navic.custom_bg or C.none
	if O.integrations.navic.custom_bg == "lualine" then background = C.mantle end

	return {
		NavicIconsFile = { fg = C.coral, bg = background },
		NavicIconsModule = { fg = C.coral, bg = background },
		NavicIconsNamespace = { fg = C.coral, bg = background },
		NavicIconsPackage = { fg = C.coral, bg = background },
		NavicIconsClass = { fg = C.yellow, bg = background },
		NavicIconsMethod = { fg = C.coral, bg = background },
		NavicIconsProperty = { fg = C.green, bg = background },
		NavicIconsField = { fg = C.green, bg = background },
		NavicIconsConstructor = { fg = C.coral, bg = background },
		NavicIconsEnum = { fg = C.green, bg = background },
		NavicIconsInterface = { fg = C.yellow, bg = background },
		NavicIconsFunction = { fg = C.coral, bg = background },
		NavicIconsVariable = { fg = C.flamingo, bg = background },
		NavicIconsConstant = { fg = C.peach, bg = background },
		NavicIconsString = { fg = C.green, style = O.styles.strings, bg = background },
		NavicIconsNumber = { fg = C.peach, bg = background },
		NavicIconsBoolean = { fg = C.peach, bg = background },
		NavicIconsArray = { fg = C.peach, bg = background },
		NavicIconsObject = { fg = C.peach, bg = background },
		NavicIconsKey = { fg = C.pink, style = O.styles.keywords, bg = background },
		NavicIconsNull = { fg = C.peach, bg = background },
		NavicIconsEnumMember = { fg = C.red, bg = background },
		NavicIconsStruct = { fg = C.coral, bg = background },
		NavicIconsEvent = { fg = C.coral, bg = background },
		NavicIconsOperator = { fg = C.sky, bg = background },
		NavicIconsTypeParameter = { fg = C.coral, bg = background },
		NavicText = { fg = C.sapphire, bg = background },
		NavicSeparator = { fg = C.text, bg = background },
	}
end

return M

