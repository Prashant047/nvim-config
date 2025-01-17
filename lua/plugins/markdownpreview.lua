return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = 'markdown',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {},
  config = function()
    vim.keymap.set("n", "<leader>mr", ":RenderMarkdown toggle<CR>")
  end
}
