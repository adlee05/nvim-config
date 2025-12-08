return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	opts = {
		theme = "wave",
		transparent = false,
	},
	config = function(_, opts)
		require("kanagawa").setup(opts)
		vim.cmd.colorscheme("kanagawa")
	end,
}
