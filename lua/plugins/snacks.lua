-- lua/plugins/snacks.lua

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  init = function()
    -- Optional: disable global animation behavior if needed
    -- vim.g.snacks_animate = false
  end,
  ---@type snacks.Config
  opts = {
    animate       = { enabled = true },
    bigfile       = { enabled = true },
    explorer      = { enabled = true },
    indent        = { enabled = true },
    notifier      = { enabled = true },
    scope         = { enabled = true },
    scroll        = { enabled = true },
    statuscolumn  = { enabled = true },
    terminal      = { enabled = true },
    toggle        = { enabled = true },
    words         = { enabled = true },
    quickfile     = { enabled = true },
    picker        = { enabled = true },
    image         = { enabled = true },
    input        = { enabled = true },
  },
}
