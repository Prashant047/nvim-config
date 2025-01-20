return {
  'echasnovski/mini.icons',
  version = '*',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("mini.icons").setup({})
  end
}
