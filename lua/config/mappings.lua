--Para acortar
local opts = { noremap = true, silent = true }

-- Curucusi
vim.keymap.set('i', 'jj', '<Esc>', opts)
vim.keymap.set("n", "<leader>j", ":wq<CR>", opts)
vim.keymap.set("n", "<C-j>", "o<Esc>", opts)
vim.keymap.set("n", "<C-d>", ":q!<CR>", opts)
vim.keymap.set("n", "<C-h>", "<Home>", opts)
vim.keymap.set("n", "<C-f>", "<End>", opts)
vim.keymap.set("v", "<C-h>", "<Home>", opts)
vim.keymap.set("v", "<C-f>", "<End>h", opts)


vim.keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "Open Snacks Explorer" })
vim.keymap.set("n", "<leader>tt", function() Snacks.terminal() end, { desc = "Toggle Snacks Terminal" })
vim.keymap.set("t", "<C-g>", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "t", false)
end, { desc = "Exit terminal mode" })


-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts)   -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab

-- not saving deleted text
-- vim.keymap.set({ "n", "v" }, "d", '"_d')
-- vim.keymap.set({ "n", "v" }, "x", '"_x')
-- vim.keymap.set({ "n", "v" }, "c", '"_c')
-- vim.keymap.set("n", "dd", '"_dd')

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

--Config Files command mode
vim.api.nvim_create_user_command("ConfigFiles", function()
	require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
end, {})

--Save with ctrl+s
vim.keymap.set("n", "<C-s>", ":update<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<C-s>", "<C-C>:update<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<C-O>:update<CR>", { noremap = true, silent = true })

