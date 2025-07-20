--Para acortar
local opts = { noremap = true, silent = true }

-- Navigation keymaps
vim.keymap.set("i", "jj", "<Esc>", opts)
vim.keymap.set("n", "<leader>j", ":wq<CR>", opts)
vim.keymap.set("n", "<leader>w", ":w!<CR>", opts)
vim.keymap.set("n", "<C-j>", "o<Esc>", opts)
vim.keymap.set("n", "<C-d>", ":q!<CR>", opts)
vim.keymap.set("n", "<C-h>", "<Home>", opts)
vim.keymap.set("n", "<C-f>", "<End>", opts)
vim.keymap.set("v", "<C-h>", "<Home>", opts)
vim.keymap.set("v", "<C-f>", "<End>h", opts)

-- Enter normal mode from terminal
vim.keymap.set("t", "<C-g>", function()
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "t", false)
end, { desc = "Exit terminal mode" })

-- =============================================================================
-- Snacks.nvim Mappings
-- =============================================================================

-- Open the file explorer
vim.keymap.set("n", "<leader>f", function()
	require("snacks").explorer()
end, { desc = "Open Snacks Explorer" })

-- Toggle a terminal at the bottom
vim.keymap.set("n", "<leader>tt", function()
	require("snacks").terminal.toggle()
end, { desc = "Toggle terminal" })

-- Open a floating terminal
vim.keymap.set("n", "<leader>tb", function()
	require("snacks").terminal.open("fish")
end, { desc = "Open fish terminal" })

-- Find words in the current buffer
vim.keymap.set("n", "<leader>sw", function()
	require("snacks").words()
end, { desc = "Search [W]ords in buffer" })

-- Find text in the current folder (Live Grep)
vim.keymap.set("n", "<leader>sg", function()
	require("snacks").picker.grep()
end, { desc = "Search with [G]rep in folder" })

-- List and switch between open buffers
vim.keymap.set("n", "<leader>sb", function()
	require("snacks").picker.buffers()
end, { desc = "Search open [b]uffers" })

-- Show the git status of the current project
vim.keymap.set("n", "<leader>sg", function()
	require("snacks").picker.git_status()
end, { desc = "[G]it [s]tatus" })

-- Search Neovim's help tags
vim.keymap.set("n", "<leader>sh", function()
	require("snacks").picker.help_tags()
end, { desc = "[S]earch [H]elp tags" })
