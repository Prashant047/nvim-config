return {
  'echasnovski/mini.statusline',
  version = '*',
  config = function()
    require("mini.statusline").setup({
      use_icons = false
    })
  end
}
