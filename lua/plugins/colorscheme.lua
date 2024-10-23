return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      local util = require("tokyonight.util")
      require('tokyonight').setup({
        style = 'night',
        on_colors = function (colors)
          colors.bg = colors.bg_dark
        end
      })
    end
  },
}
