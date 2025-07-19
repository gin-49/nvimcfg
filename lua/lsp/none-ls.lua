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
				null_ls.builtins.formatting.black, -- Added Python formatter
				null_ls.builtins.completion.spell,
				-- You can add more formatters here as needed
			},
		})

		-- Improved format keymap that works with both null-ls and LSP
		vim.keymap.set("n", "<leader>l", function()
			vim.lsp.buf.format({
				async = true,
				filter = function(client)
					-- Use null-ls if available, otherwise fall back to regular LSP
					if
						#vim.tbl_filter(function(c)
							return c.name == "null-ls"
						end, vim.lsp.get_active_clients()) > 0
					then
						return client.name == "null-ls"
					end
					return client.supports_method("textDocument/formatting")
				end,
			})
		end, { desc = "Format buffer with null-ls or LSP" })

		-- Optional: Create separate keymaps for different formatters
		vim.keymap.set("n", "<leader>lf", function()
			vim.lsp.buf.format({ name = "null-ls" })
		end, { desc = "Force null-ls formatting" })
	end,
}
