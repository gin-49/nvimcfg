--Sincronizar clipboard con OS
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)
--.tex por default latex
vim.g.tex_flavor = "latex"

vim.g.have_nerd_font = true
vim.o.number = true
vim.wo.number = true
vim.o.relativenumber = true

vim.o.showmode = false

vim.o.wrap = false
vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = "yes"

vim.o.cursorline = true

vim.o.scrolloff = 15

vim.o.confirm = true

vim.o.mouse = "a"

--INDENTS
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.sidescrolloff = 8              -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)
vim.o.cursorline = true              -- Highlight the current line (default: false)
vim.o.splitbelow = true              -- Force all horizontal splits to go below current window (default: false)
vim.o.splitright = true              -- Force all vertical splits to go to the right of current window (default: false)
vim.o.hlsearch = false               -- Set highlight on search (default: true)
vim.o.showmode = false               -- We don't need to see things like -- INSERT -- anymore (default: true)
vim.opt.termguicolors = true         -- Set termguicolors to enable highlight groups (default: false)
vim.o.whichwrap = "bs<>[]hl"         -- Which "horizontal" keys are allowed to travel to prev/next line (default: 'b,s')
vim.o.numberwidth = 4                -- Set number column width to 2 {default 4} (default: 4)
vim.o.swapfile = false               -- Creates a swapfile (default: true)
vim.o.smartindent = true             -- Make indenting smarter again (default: false)
vim.o.showtabline = 2                -- Always show tabs (default: 1)
vim.o.backspace = "indent,eol,start" -- Allow backspace on (default: 'indent,eol,start')
vim.o.pumheight = 10                 -- Pop up menu height (default: 0)
vim.o.conceallevel = 0               -- So that `` is visible in markdown files (default: 1)
vim.wo.signcolumn = "yes"            -- Keep signcolumn on by default (default: 'auto')
vim.o.cmdheight = 1                  -- More space in the Neovim command line for displaying messages (default: 1)
vim.o.breakindent = true             -- Enable break indent (default: false)
vim.o.updatetime = 250               -- Decrease update time (default: 4000)
vim.o.timeoutlen = 300               -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
vim.o.backup = false                 -- Creates a backup file (default: false)
vim.o.writebackup = false            -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
vim.o.undofile = true                -- Save undo history (default: false)

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
