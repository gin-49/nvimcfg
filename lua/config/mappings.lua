local opts = { noremap = true, silent = true }

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab

-- not saving deleted text
vim.keymap.set({ "n", "v" }, "d", '"_d')
vim.keymap.set({ "n", "v" }, "x", '"_x')
vim.keymap.set({ "n", "v" }, "c", '"_c')
vim.keymap.set("n", "dd", '"_dd')

-- Buffers
vim.keymap.set("n", "<leader>x", "<cmd>bdelete!<CR>", opts)
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", opts)

-- Change buffer with leader + number
for i = 1, 9 do
	vim.keymap.set("n", "<leader>" .. i, function()
		local buflist = vim.fn.getbufinfo({ buflisted = 1 })
		if buflist[i] then
			vim.cmd("buffer " .. buflist[i].bufnr)
		else
			vim.notify("No buffer in slot " .. i, vim.log.levels.WARN)
		end
	end, { desc = "Go to buffer " .. i })
end

-- Config Files command mode
vim.api.nvim_create_user_command("ConfigFiles", function()
	require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
end, {})

-- Save with ctrl+s
vim.keymap.set("n", "<C-s>", ":update<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<C-s>", "<C-C>:update<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<C-O>:update<CR>", { noremap = true, silent = true })

-- Flash
vim.keymap.set({ "n", "x", "o" }, "s", function()
	require("flash").jump()
end, { desc = "Flash" })
vim.keymap.set({ "n", "x", "o" }, "S", function()
	require("flash").treesitter()
end, { desc = "Flash Treesitter" })
vim.keymap.set("o", "r", function()
	require("flash").remote()
end, { desc = "Remote Flash" })
vim.keymap.set({ "o", "x" }, "R", function()
	require("flash").treesitter_search()
end, { desc = "Treesitter Search" })
vim.keymap.set("c", "<c-s>", function()
	require("flash").toggle()
end, { desc = "Toggle Flash Search" })

-- Oil
vim.keymap.set("n", "<leader>e", function()
	require("oil").toggle_float()
end, { desc = "Toggle oil in floating window" })
require("oil").setup({
	keymaps = {
		["<BS>"] = { "actions.parent", mode = "n" },
		["<C-s>"] = false,
	},
})

-- Undo Tree
vim.keymap.set("n", "<leader>u", function()
	require("undotree").toggle()
end, { desc = "Toggle Undotree" })

-- Vimtex
vim.keymap.set("n", "<localleader>cc", ":VimtexCompile<CR>", { desc = "Vimtex Compile" })
vim.keymap.set("n", "<localleader>cv", ":VimtexView<CR>", { desc = "Vimtex View" })

-- Terminal
vim.keymap.set("n", "<leader>tt", function() require("snacks").terminal() end, { desc = "Toggle Terminal" })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
