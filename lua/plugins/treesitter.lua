return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate", -- important!
	opts = {
		ensure_installed = {
			"c",
			"tsx",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"typescript",
			"html",
			"css",
			"scss",
			"json",
			"xml",
		},
		auto_install = true, -- automatically install parsers when needed
		highlight = { enable = true },
		indent = { enable = false },
	},
}
