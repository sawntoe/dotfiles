map = vim.api.nvim_set_keymap
vim.g.floaterm_keymap_new = '<Leader>t'
vim.g.floaterm_keymap_prev = '<Leader>f<Left>'
vim.g.floaterm_keymap_next = '<Leader>f<Right>'
vim.g.floaterm_keymap_toggle = '<Leader><M-Tab>'

map('n', '<C-/>', '<cmd>CommentToggle<CR>', { noremap = true })
map('i', '<C-/>', '<cmd>CommentToggle<CR>', { noremap = true })
map('v', '<C-/>', '<cmd>CommentToggle<CR>', { noremap = true })

map('n', '<Leader>[', '<cmd>NvimTreeToggle<CR>', { noremap = true })

map('n', '<Leader>`', '<cmd>Telescope<CR>', { noremap = true })

map('n', "<C-h>", "<Home>", { noremap = true })
map('i', "<C-h>", "<Home>", { noremap = true })
-- 
map('n', "<C-l>", "<End>", { noremap = true })
map('i', "<C-l>", "<End>", { noremap = true })
-- 
map('n', "<C-j>", "<PageDown>", { noremap = true })
map('i', "<C-j>", "<PageDown>", { noremap = true })
-- 
map('n', "<C-k>", "<PageUp>", { noremap = true })
map('i', "<C-k>", "<PageUp>", { noremap = true })
