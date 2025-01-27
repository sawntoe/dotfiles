local cmp = require("cmp")

cmp.setup({
  expand = function(args)
    vim.fn["UltiSnips#Anon"](args.body)
  end,
  sources = {
    { name = "buffer" },
    -- { name = "cmdline" },
    { name = "git" },
    -- { name = "latex_symbols" },
    { name = "nvim_lsp" },
    -- { name = "nvim_lua" },
    { name = "ultisnips"},
    { name = "path" },
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({

    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  })
})
