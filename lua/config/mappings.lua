-- =============================================================================
--  Key Mappings
-- =============================================================================
local opts = { noremap = true, silent = true }

-- Navigation and Editor keymaps
vim.keymap.set("i", "jj", "<Esc>", opts)
vim.keymap.set("n", "<leader>j", "ZZ", opts)
vim.keymap.set("n", "<leader>w", ":w!<CR>", opts)
vim.keymap.set("n", "<C-j>", "o<Esc>", opts)
vim.keymap.set("n", "<C-d>", ":q!<CR>", opts)
vim.keymap.set("n", "<C-h>", "<Home>", opts)
vim.keymap.set("n", "<C-f>", "<End>", opts)
vim.keymap.set("v", "<C-h>", "<Home>", opts)
vim.keymap.set("v", "<C-f>", "<End>h", opts)

-- Bufferline
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)

-- Enter normal mode from terminal
vim.keymap.set("t", "<C-g>", function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true), "t", false)
end, { desc = "Exit terminal mode" })

-- Terminal
vim.keymap.set("n", "tt", function() require("snacks").terminal() end, { desc = "Toggle Terminal" })

-- Core Pickers
vim.keymap.set("n", "<leader><space>", function() require("snacks").picker.smart() end, { desc = "Smart Find" })
vim.keymap.set("n", "<leader>f", function() require("snacks").explorer() end, { desc = "File Explorer" })
vim.keymap.set("n", "<leader>/", function() require("snacks").picker.grep() end, { desc = "Grep (Search Project)" })

-- Git
vim.keymap.set("n", "<leader>gs", function() require("snacks").picker.git_status() end, { desc = "Git Status" })
vim.keymap.set("n", "<leader>gg", function() require("snacks").lazygit() end, { desc = "Lazygit" })

-- Search & Commands
vim.keymap.set({"n", "x"}, "<leader>sw", function() require("snacks").picker.grep_word() end, { desc = "Search Word"})
vim.keymap.set("n", "<leader>su", function() require("snacks").picker.undo() end, { desc = "Undo History" })
vim.keymap.set("n", "<leader>sc", function() require("snacks").picker.commands() end, { desc = "Search Commands" })
vim.keymap.set("n", "<leader>sb", function() require("snacks").picker.buffers() end, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>sr", function() require("snacks").picker.recent() end, { desc = "Recent Files" })

-- Toggles
require("snacks").toggle.option("spell", { name = "Spelling" }):map("<leader>us")
require("snacks").toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
require("snacks").toggle.diagnostics():map("<leader>ud")
require("snacks").toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map("<leader>uc")
require("snacks").toggle.indent():map("<leader>ug")

-- flash.nvim
vim.keymap.set({"n", "x", "o"}, "s", function() require("flash").jump() end, { desc = "Flash" })
vim.keymap.set({"n", "x", "o"}, "S", function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
vim.keymap.set("o", "r", function() require("flash").remote() end, { desc = "Remote Flash" })
vim.keymap.set({"o", "x"}, "R", function() require("flash").treesitter_search() end, { desc = "Treesitter Search" })
vim.keymap.set("c", "<c-s>", function() require("flash").toggle() end, { desc = "Toggle Flash Search" })

-- vimtex
vim.keymap.set("n", "<localleader>cc", ":VimtexCompile<CR>", { desc = "Vimtex Compile" })
vim.keymap.set("n", "<localleader>cv", ":VimtexView<CR>", { desc = "Vimtex View" })
