return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {'saghen/blink.cmp'},
		event = {"BufReadPost", "BufNewFile"},
		cmd = {"LspInfo", "LspInstall", "LspUninstall"},
		config = function()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			require("lspconfig").lua_ls.setup { capabilities = capabilities}

			vim.diagnostic.config({
				virtual_text = true,
			})

			local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
			end
		end,
	}
}


