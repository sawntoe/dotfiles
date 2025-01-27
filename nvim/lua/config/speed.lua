require('leap').create_default_mappings()
vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
vim.api.nvim_set_hl(0, 'LeapLabelPrimary', { link = 'String' })
vim.api.nvim_set_hl(0, 'LeapLabelSecondary', { link = 'Function' })

require("Comment").setup()
require("nvim-autopairs").setup()
