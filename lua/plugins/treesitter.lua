return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python", "typescript", "go", "markdown", "make", "json", "yaml" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
