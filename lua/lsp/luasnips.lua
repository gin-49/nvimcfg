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

		-- Keymaps
		vim.keymap.set({ "i", "s" }, "<C-k>", function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { silent = true, desc = "LuaSnip Expand or Jump" })

		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end, { silent = true, desc = "LuaSnip Jump Back" })

		vim.keymap.set("i", "<C-l>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, { silent = true, desc = "LuaSnip Change Choice" })
	end,
}
