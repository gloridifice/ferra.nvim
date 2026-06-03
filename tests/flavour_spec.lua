local function reload()
	for name, _ in pairs(package.loaded) do
		if name:match "^ferra" then package.loaded[name] = nil end
	end
	vim.g.ferra_flavour = nil
	vim.cmd [[highlight clear]]
end

describe("set background to", function()
	before_each(function()
		reload()
		vim.cmd.colorscheme "ferra"
	end)
	it("dark", function()
		vim.o.background = "dark"
		assert.equals("ferra", vim.g.colors_name)
	end)
end)

describe("change flavour to", function()
	before_each(function() reload() end)
	it("ferra", function()
		vim.cmd.colorscheme "ferra"
		assert.equals("ferra", vim.g.colors_name)
	end)
end)

describe("respect setup flavour =", function()
	before_each(function() reload() end)
	it("ferra", function()
		require("ferra").setup { flavour = "ferra" }
		vim.cmd.colorscheme "ferra"
		assert.equals("ferra", vim.g.colors_name)
	end)
end)

describe("(deprecated) respect vim.g.ferra_flavour =", function()
	before_each(function() reload() end)
	it("ferra", function()
		vim.g.ferra_flavour = "ferra"
		vim.cmd.colorscheme "ferra"
		assert.equals("ferra", vim.g.colors_name)
	end)
end)
