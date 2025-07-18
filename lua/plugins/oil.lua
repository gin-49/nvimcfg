return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		keymaps = {
			["<BS>"] = { "actions.parent", mode = "n" },
			["<C-s>"] = false,
			["<leader>cd"] = {
				callback = function()
					local oil = require("oil")
					local dir = oil.get_current_dir()
					vim.cmd.cd(dir)
					vim.notify("CWD set to " .. dir, vim.log.levels.INFO)
				end,
				desc = "Set cwd to current Oil directory",
			},
		},
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
