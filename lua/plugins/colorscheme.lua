return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup({
        style = 'night',
        on_colors = function(colors)
          colors.bg = colors.bg_dark
        end
      })
    end
  },
  {
    "wnkz/monoglow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
  }
}
