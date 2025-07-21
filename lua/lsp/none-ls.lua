return {
	"nvimtools/none-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")

		-- Configure null-ls with additional formatters
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black, 
				null_ls.builtins.completion.spell,
				-- You can add more formatters here as needed
			},
		})
	end,
}
