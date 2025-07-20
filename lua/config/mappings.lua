--Para acortar
local opts = { noremap = true, silent = true }

-- Navigation keymaps
vim.keymap.set('i', 'jj', '<Esc>', opts)
vim.keymap.set("n", "<leader>j", ":wq<CR>", opts)
vim.keymap.set("n", "<leader>w", ":w!<CR>", opts)
vim.keymap.set("n", "<C-j>", "o<Esc>", opts)
vim.keymap.set("n", "<C-d>", ":q!<CR>", opts)
vim.keymap.set("n", "<C-h>", "<Home>", opts)
vim.keymap.set("n", "<C-f>", "<End>", opts)
vim.keymap.set("v", "<C-h>", "<Home>", opts)
vim.keymap.set("v", "<C-f>", "<End>h", opts)

-- Find files
vim.keymap.set("n", "<leader>sp", function() require("snacks").picker() end, { desc = "Open Snacks Picker" })

-- Find words in the current folder with Snacks
vim.keymap.set("n", "<leader>sw", function()
  require("snacks").picker.grep({ cwd = vim.fn.getcwd() })
end, { desc = "Search for word in [F]older" })

-- Open file explorer
vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "Open Snacks Explorer" })

-- Toggle the terminal using <leader>tt
vim.keymap.set("n", "<leader>tt", function()
  require("snacks").terminal.toggle()
end, { desc = "Toggle terminal" })

-- Open a floating terminal
vim.keymap.set("n", "<leader>tb", function()
  require("snacks").terminal.open("fish")
end, { desc = "Open fish terminal" })

-- Enter normal mode from terminal
vim.keymap.set("t", "<C-g>", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "t", false)
end, { desc = "Exit terminal mode" })
