return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/nvim-cmp',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      -- Reserve a space in the gutter
      -- This will avoid an annoying layout shift in the screen
      vim.opt.signcolumn = 'yes'

      -- Add cmp_nvim_lsp capabilities settings to lspconfig
      -- This should be executed before you configure any language server
      local lspconfig_defaults = require('lspconfig').util.default_config
      lspconfig_defaults.capabilities = vim.tbl_deep_extend(
        'force',
        lspconfig_defaults.capabilities,
        require('cmp_nvim_lsp').default_capabilities()
      )

      -- This is where you enable features that only work
      -- if there is a language server active in the file
      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
          vim.keymap.set('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
          vim.keymap.set('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
          vim.keymap.set('n', '<leader>sh', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
          vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
          vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
          vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
          vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
          vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
          vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
          vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
          vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
          vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        end,
      })

      -- hide the diagnostic messages
      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
          virtual_text = false
        }
      )

      -- mason setup
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'pyright',
          'rust_analyzer',
          'gopls',
          'html',
          'ts_ls',
          'clangd',
          'cssls',
          'volar',
          'denols',
          'svelte',
        },
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
          denols = function()
            local nvim_lsp = require('lspconfig')
            nvim_lsp.denols.setup({
              root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
            })
          end,
          ts_ls = function()
            local nvim_lsp = require('lspconfig')
            nvim_lsp.ts_ls.setup({
              single_file_support = false
            })
          end,
        },
      })

      local cmp = require('cmp')
      local cmp_select = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },
        },
        snippet = {
          expand = function(args)
            -- You need Neovim v0.10 to use vim.snippet
            vim.snippet.expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
          ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
          ['<C-i>'] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
      })
    end
  },
}
