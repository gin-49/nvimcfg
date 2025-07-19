return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
			italic = {
				strings = false,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			-- Add this line to enable Tree-sitter colors
			overrides = {},
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
