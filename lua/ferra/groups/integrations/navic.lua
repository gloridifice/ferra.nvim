local M = {}

M.url = "https://github.com/SmiteshP/nvim-navic"

function M.get()
	local background = O.integrations.navic.custom_bg and O.integrations.navic.custom_bg or C.none
	if O.integrations.navic.custom_bg == "lualine" then background = C.bg1 end

	return {
		NavicIconsFile = { fg = C.coral, bg = background },
		NavicIconsModule = { fg = C.coral, bg = background },
		NavicIconsNamespace = { fg = C.coral, bg = background },
		NavicIconsPackage = { fg = C.coral, bg = background },
		NavicIconsClass = { fg = C.honey, bg = background },
		NavicIconsMethod = { fg = C.coral, bg = background },
		NavicIconsProperty = { fg = C.sage, bg = background },
		NavicIconsField = { fg = C.sage, bg = background },
		NavicIconsConstructor = { fg = C.coral, bg = background },
		NavicIconsEnum = { fg = C.sage, bg = background },
		NavicIconsInterface = { fg = C.honey, bg = background },
		NavicIconsFunction = { fg = C.coral, bg = background },
		NavicIconsVariable = { fg = C.coral, bg = background },
		NavicIconsConstant = { fg = C.coral, bg = background },
		NavicIconsString = { fg = C.sage, style = O.styles.strings, bg = background },
		NavicIconsNumber = { fg = C.coral, bg = background },
		NavicIconsBoolean = { fg = C.coral, bg = background },
		NavicIconsArray = { fg = C.coral, bg = background },
		NavicIconsObject = { fg = C.coral, bg = background },
		NavicIconsKey = { fg = C.rose, style = O.styles.keywords, bg = background },
		NavicIconsNull = { fg = C.coral, bg = background },
		NavicIconsEnumMember = { fg = C.ember, bg = background },
		NavicIconsStruct = { fg = C.coral, bg = background },
		NavicIconsEvent = { fg = C.coral, bg = background },
		NavicIconsOperator = { fg = C.mist, bg = background },
		NavicIconsTypeParameter = { fg = C.coral, bg = background },
		NavicText = { fg = C.mist, bg = background },
		NavicSeparator = { fg = C.blush, bg = background },
	}
end

return M

