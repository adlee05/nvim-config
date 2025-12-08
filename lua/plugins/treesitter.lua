return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",           -- important!
	opts = {
		ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
		auto_install = true,         -- automatically install parsers when needed
		highlight = { enable = true },
		indent = { enable = true },
	},
}
