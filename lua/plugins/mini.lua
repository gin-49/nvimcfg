return {
	{
		"echasnovski/mini.nvim",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("mini.comment").setup()

			require("mini.surround").setup()

			require("mini.pairs").setup()

			require("mini.trailspace").setup()

            -- Indentation
			require("mini.basics").setup({
				options = {
					basic = false,
					extra_ui = false,
					win_borders = "none",
				},
				mappings = {},
				autocommands = {
					basic = false,
					relnum_in_visual_mode = false,
					indent = true,
				},
			})
		end,
	},
}
