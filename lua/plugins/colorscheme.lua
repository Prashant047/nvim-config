return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require('tokyonight').setup({
        style = 'night',
        on_colors = function (colors)
          colors.bg = colors.bg_dark
        end
      })
    end
  },
}
