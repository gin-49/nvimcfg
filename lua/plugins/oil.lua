return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		keymaps = {},
		delete_to_trash = true,
	},
	dependencies = { { "nvim-tree/nvim-web-devicons", opts = {} } },
	lazy = false,
	config = function(_, opts)
		require("oil").setup(opts)
		vim.keymap.set("n", "<leader>e", function()
			require("oil").toggle_float()
		end, { desc = "Toggle oil in floating window" })
	end,
}
