return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp",
	event = "InsertEnter",
	dependencies = {
		"rafamadriz/friendly-snippets", -- Optional: for prebuilt snippets
	},

	config = function()
		local ls = require("luasnip")

		ls.config.set_config({
			enable_autosnippets = true,
			update_events = { "TextChanged", "TextChangedI" },
			store_selection_keys = "<Tab>",
		})

		-- Load VS Code-style snippets (optional)
		require("luasnip.loaders.from_vscode").lazy_load()

		-- Load Custom Snippets, Change path if needed
		require("luasnip.loaders.from_lua").lazy_load({
			paths = "~/.config/nvim/lua/luasnippets",
		})
	end,
}
