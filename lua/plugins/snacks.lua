return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	init = function()
		-- disable animations globally
		vim.g.snacks_animate = false
	end,
	opts = {
		indent = { enabled = true },
        image = { enabled = true},
		notifier = { enabled = true },
		scope = { enabled = true },
        terminal = { enabled = true},
	},
}
