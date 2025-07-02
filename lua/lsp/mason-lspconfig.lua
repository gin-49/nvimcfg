return {
	"mason-org/mason-lspconfig.nvim",
	event = {"BufReadPre", "BufNewFile"},
	opts = {
		automatic_installation = true,
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"neovim/nvim-lspconfig",
	},
}
