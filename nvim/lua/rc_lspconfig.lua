local servers = {
    'cssls','html','jsonls','eslint', -- form vscode-langservers-extracted
    'bashls',
    'rust_analyzer',
    'pyright',
    'tsserver',
    'jdtls',
    'sumneko_lua'
}

local on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", {buffer=0})
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer=0})
        vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", {buffer=0}) vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", {buffer=0}) vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", {buffer=0})

        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.formatting, {buffer=0})
        vim.keymap.set("n", "<leader>crn", vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {buffer=0})
        vim.keymap.set("n", "<leader>cd", "<cmd>Telescope diagnostics<cr>", {buffer=0})
        vim.keymap.set("n", "<leader>cdj", vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set("n", "<leader>cdk", vim.diagnostic.goto_prev, {buffer=0})

        -- autoformat on save

        -- auto completion
        vim.keymap.set("i", "c-<space>", vim.lsp.omnifunc, {buffer=0})
    end

  -- Setup nvim-cmp.
vim.opt.completeopt = {"menu", "menuone", "noselect"}

  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  --------------------------------------------------------------
  --------------------------------------------------------------
  -- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _,lsp in ipairs(servers) do
    require('lspconfig')[lsp].setup{
        capabilities = capabilities,
        on_attach = on_attach
    }
end

-- require'lspconfig'.jdtls.setup{
--    capabilities = capabilities,
--    on_attach = on_attach,
--    cmd = { 'jdtls' },
--    root_dir = function(fname)
--       return require'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
--    end
-- }
