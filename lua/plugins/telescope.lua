return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    }
  },
  config = function()
    local telescope = require('telescope')
    telescope.load_extension('fzf')

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules", ".git"
        }
      },
      pickers = {
        find_files = {
          theme = "ivy"
        },
        live_grep = {
          theme = "ivy"
        },
        buffers = {
          theme = "ivy"
        },
        help_tags = {
          theme = "ivy"
        },
        colorscheme = {
          theme = "ivy"
        },
      },
    })

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = 'Telescope colorscheme' })
  end
}
