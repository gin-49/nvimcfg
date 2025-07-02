return {
  'nvim-lualine/lualine.nvim',
  event = "VeryLazy",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,     -- Keep icons for other sections
        theme = 'gruvbox',
      },
      sections = {
        lualine_a = { 'mode' },   -- Displays "NORMAL", "INSERT" (no Linux logo)
        lualine_b = { 'branch', 'diff', 'diagnostics' }, -- Git, changes, errors
        lualine_c = {
          {
            'filename',
            path = 0,             -- Show filename only (no path)
            symbols = {
              modified = '[+]',  -- Customize if needed
              readonly = '[-]',
              unnamed = '[No Name]',
            },
          },
        },
        lualine_x = {'progress', 'filetype' }, -- Encoding, OS format, filetype
        lualine_y = { }, -- Cursor position %
        lualine_z = { 'location' }, -- Line:column
      },
    }
  end,
}
