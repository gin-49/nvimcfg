return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		keymaps = {
			["<BS>"] = { "actions.parent", mode = "n" },
			["<C-s>"] = false,
		},
		delete_to_trash = true,
	},
	-- Optional dependencies
	dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	vim.keymap.set("n", "<leader>e", function()
		require("oil").toggle_float()
	end, { desc = "Toggle oil in floating window" }),
}
