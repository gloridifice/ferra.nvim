local M = {}

M.url = "https://github.com/nvimdev/lspsaga.nvim"

function M.get()
	return {
		SagaTitle = { fg = C.sage, style = { "bold" } },
		SagaBorder = { fg = C.coral, bg = C.none },
		SagaNormal = { bg = O.transparent_background and C.none or C.bgbase },
		SagaToggle = { fg = C.sage },
		SagaCount = { fg = C.bg3 },
		SagaBeacon = { bg = U.darken(C.bg1, 0.8, C.bgbase) },
		SagaVirtLine = { fg = C.bg2 },
		SagaSpinner = { fg = C.mauve, style = { "bold" } },
		SagaSpinnerTitle = { fg = C.mauve, style = { "bold" } },
		SagaText = { fg = C.blush },
		SagaSelect = { fg = C.coral, style = { "bold" } },
		SagaSearch = { link = "Search" },
		SagaFinderFname = { fg = C.mist, style = { "bold" } },
		ActionFix = { fg = C.rose },
		ActionPreviewTitle = { fg = C.mauve, bg = O.transparent_background and C.none or C.bgbase },
		CodeActionText = { fg = C.sage },
		CodeActionNumber = { fg = C.rose },
		SagaImpIcon = { fg = C.rose },
		SagaLightBulb = { link = "DiagnosticSignHint" },
		RenameNormal = { fg = C.blush },
		RenameMatch = { link = "Search" },
		DiagnosticText = { fg = C.blush },
		SagaWinbarSep = { fg = C.coral },
		SagaDetail = { link = "Comment" },
		SagaFileName = { fg = C.bg3, style = { "bold" } },
		SagaFolderName = { fg = C.bg3, style = { "bold" } },
		SagaInCurrent = { fg = C.coral },

		-- Lspkind icons support
		LspKindClass = { fg = C.honey },
		LspKindConstant = { fg = C.coral },
		LspKindConstructor = { fg = C.mist },
		LspKindEnum = { fg = C.honey },
		LspKindEnumMember = { fg = C.sage },
		LspKindEvent = { fg = C.honey },
		LspKindField = { fg = C.sage },
		LspKindFile = { fg = C.blush },
		LspKindFunction = { fg = C.coral },
		LspKindInterface = { fg = C.honey },
		LspKindKey = { fg = C.ember },
		LspKindMethod = { fg = C.coral },
		LspKindModule = { fg = C.coral },
		LspKindNamespace = { fg = C.coral },
		LspKindNumber = { fg = C.coral },
		LspKindOperator = { fg = C.mist },
		LspKindPackage = { fg = C.coral },
		LspKindProperty = { fg = C.sage },
		LspKindStruct = { fg = C.honey },
		LspKindTypeParameter = { fg = C.coral },
		LspKindVariable = { fg = C.coral },
		LspKindArray = { fg = C.coral },
		LspKindBoolean = { fg = C.coral },
		LspKindNull = { fg = C.honey },
		LspKindObject = { fg = C.honey },
		LspKindString = { fg = C.sage },
		-- ccls-specific icons.
		LspKindTypeAlias = { fg = C.sage },
		LspKindParameter = { fg = C.coral },
		LspKindStaticMethod = { fg = C.coral },
		-- Microsoft-specific icons.
		LspKindText = { fg = C.sage },
		LspKindSnippet = { fg = C.mauve },
		LspKindFolder = { fg = C.coral },
		LspKindUnit = { fg = C.sage },
		LspKindValue = { fg = C.coral },
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
		text = { "蟀壙 ", "LspKindText" },
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
		normal_bg = C.bgbase,
		title_bg = C.sage,
		red = C.ember,
		magenta = C.ember,
		orange = C.coral,
		yellow = C.honey,
		green = C.sage,
		cyan = C.mist,
		blue = C.coral,
		purple = C.mauve,
		white = C.blush,
		black = C.bgbase,
	}
end

return M

