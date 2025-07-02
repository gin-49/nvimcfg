return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		indent = {
			char = "▏", -- This is a solid vertical line character
			tab_char = "│", -- For tabs if you use them
		},
		scope = {
			enabled = false, -- Disable scope lines if you don't want them
		},
	},
}
