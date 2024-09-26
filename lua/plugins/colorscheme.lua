
return { 
  {
    "bluz71/vim-moonfly-colors", 
    name = "moonfly",
    -- lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme moonfly")
    -- end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme rose-pine")
    -- end
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('nordic').load()
    end
  },
  { "miikanissi/modus-themes.nvim", priority = 1000 }
}

