local M = {}

function M.get()
	if vim.treesitter.highlighter.hl_map then
		vim.notify_once(
			[[Ferra (info):
semantic_tokens integration requires neovim 0.8
If you want to stay on nvim 0.7, pin ferra tag to v0.1.0 and nvim-treesitter commit to 4cccb6f494eb255b32a290d37c35ca12584c74d0.
]],
			vim.log.levels.INFO
		)
		return {}
	end
	return {
		-- https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight
		-- Most semantic tokens (@lsp.type.<...>) are no longer defined in this file, as Neovim links to already themed Tree-sitter captures by default.

		-- lsp's are able to detect enum members where treesitter often cannot
		["@lsp.type.enumMember"] = { fg = C.pink },
		-- we assume treesitter can already handle this
		-- - treesitter can detect variables in buffers
		-- - lsp does not need responsibility for this, in fact it can be less
		--   accurate in cases
		["@lsp.type.variable"] = { link = "@variable" },

		-- in cases where the lsp can be more specific than treesitter, we should
		-- allow lsp to override treesitter
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.function.builtin"] = { link = "@function.builtin" },
		["@lsp.mod.documentation.rust"] = { fg = C.green },
	}
end

return M
