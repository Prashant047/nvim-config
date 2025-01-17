return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = 'markdown',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {},
  config = function()
    vim.keymap.set("n", "<leader>mdd", ":RenderMarkdown disable<CR>")
    vim.keymap.set("n", "<leader>mde", ":RenderMarkdown<CR>")
  end
}
