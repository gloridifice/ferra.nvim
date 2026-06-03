local M = {}

M.url = "https://github.com/nvimdev/lspsaga.nvim"

function M.get()
	return {
		SagaTitle = { fg = C.teal, style = { "bold" } },
		SagaBorder = { fg = C.blue, bg = C.none },
		SagaNormal = { bg = O.transparent_background and C.none or C.base },
		SagaToggle = { fg = C.green },
		SagaCount = { fg = C.overlay1 },
		SagaBeacon = { bg = U.darken(C.surface0, 0.8, C.crust) },
		SagaVirtLine = { fg = C.surface2 },
		SagaSpinner = { fg = C.mauve, style = { "bold" } },
		SagaSpinnerTitle = { fg = C.mauve, style = { "bold" } },
		SagaText = { fg = C.text },
		SagaSelect = { fg = C.blue, style = { "bold" } },
		SagaSearch = { link = "Search" },
		SagaFinderFname = { fg = C.subtext0, style = { "bold" } },
		ActionFix = { fg = C.pink },
		ActionPreviewTitle = { fg = C.mauve, bg = O.transparent_background and C.none or C.base },
		CodeActionText = { fg = C.green },
		CodeActionNumber = { fg = C.pink },
		SagaImpIcon = { fg = C.pink },
		SagaLightBulb = { link = "DiagnosticSignHint" },
		RenameNormal = { fg = C.text },
		RenameMatch = { link = "Search" },
		DiagnosticText = { fg = C.text },
		SagaWinbarSep = { fg = C.flamingo },
		SagaDetail = { link = "Comment" },
		SagaFileName = { fg = C.overlay2, style = { "bold" } },
		SagaFolderName = { fg = C.overlay2, style = { "bold" } },
		SagaInCurrent = { fg = C.peach },

		-- Lspkind icons support
		LspKindClass = { fg = C.yellow },
		LspKindConstant = { fg = C.peach },
		LspKindConstructor = { fg = C.sapphire },
		LspKindEnum = { fg = C.yellow },
		LspKindEnumMember = { fg = C.teal },
		LspKindEvent = { fg = C.yellow },
		LspKindField = { fg = C.teal },
		LspKindFile = { fg = C.rosewater },
		LspKindFunction = { fg = C.blue },
		LspKindInterface = { fg = C.yellow },
		LspKindKey = { fg = C.red },
		LspKindMethod = { fg = C.blue },
		LspKindModule = { fg = C.blue },
		LspKindNamespace = { fg = C.blue },
		LspKindNumber = { fg = C.peach },
		LspKindOperator = { fg = C.sky },
		LspKindPackage = { fg = C.blue },
		LspKindProperty = { fg = C.teal },
		LspKindStruct = { fg = C.yellow },
		LspKindTypeParameter = { fg = C.blue },
		LspKindVariable = { fg = C.peach },
		LspKindArray = { fg = C.peach },
		LspKindBoolean = { fg = C.peach },
		LspKindNull = { fg = C.yellow },
		LspKindObject = { fg = C.yellow },
		LspKindString = { fg = C.green },
		-- ccls-specific icons.
		LspKindTypeAlias = { fg = C.green },
		LspKindParameter = { fg = C.blue },
		LspKindStaticMethod = { fg = C.peach },
		-- Microsoft-specific icons.
		LspKindText = { fg = C.green },
		LspKindSnippet = { fg = C.mauve },
		LspKindFolder = { fg = C.blue },
		LspKindUnit = { fg = C.green },
		LspKindValue = { fg = C.peach },
	}
end

function M.custom_kind()
	return {
		File = { "蟀垯 ", "LspKindFile" },
		Module = { "顦?", "LspKindModule" },
		Namespace = { "蟀寳 ", "LspKindNamespace" },
		Package = { "蟀彇 ", "LspKindPackage" },
		Class = { "蟀寳 ", "LspKindClass" },
		Method = { "顫?", "LspKindMethod" },
		Property = { "蟀啩 ", "LspKindProperty" },
		Field = { "飩?", "LspKindField" },
		Constructor = { "飷?", "LspKindConstructor" },
		Enum = { "蟀捇", "LspKindEnum" },
		Interface = { "飹?", "LspKindInterface" },
		Function = { "蟀姇 ", "LspKindFunction" },
		Variable = { "顬?", "LspKindVariable" },
		Constant = { "顪?", "LspKindConstant" },
		String = { "蟀€?", "LspKindString" },
		Number = { "蟀帬 ", "LspKindNumber" },
		Boolean = { "顬?", "LspKindBoolean" },
		Array = { "蟀叒 ", "LspKindArray" },
		Object = { "蟀叐 ", "LspKindObject" },
		Key = { "蟀寢 ", "LspKindKey" },
		Null = { "飳?", "LspKindNull" },
		EnumMember = { "飬?", "LspKindEnumMember" },
		Struct = { "蟀寳 ", "LspKindStruct" },
		Event = { "飭?", "LspKindEvent" },
		Operator = { "蟀啎 ", "LspKindOperator" },
		TypeParameter = { "蟀妱 ", "LspKindTypeParameter" },
		TypeAlias = { "顫?", "LspKindTypeAlias" },
		Parameter = { "顫?", "LspKindParameter" },
		StaticMethod = { "蟀爠 ", "LspKindStaticMethod" },
		Macro = { "飫?", "LspKindMacro" },
		Text = { "蟀壙 ", "LspKindText" },
		Snippet = { "飫?", "LspKindSnippet" },
		Folder = { "飦?", "LspKindFolder" },
		Unit = { "蟀壔 ", "LspKindUnit" },
		Value = { "瞠?", "LspKindValue" },
	}
end

-- Backwards compatibility
function M.custom_colors()
	local C = require("ferra.palettes").get_palette()
	return {
		normal_bg = C.base,
		title_bg = C.green,
		red = C.red,
		magenta = C.maroon,
		orange = C.peach,
		yellow = C.yellow,
		green = C.green,
		cyan = C.sky,
		blue = C.blue,
		purple = C.mauve,
		white = C.text,
		black = C.crust,
	}
end

return M

