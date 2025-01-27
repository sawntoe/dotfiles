map = vim.api.nvim_set_keymap

vim.keymap.set("n", "<Leader>'", require("notify").dismiss)
-- vim.keymap.set('n', '<Leader>.', vim.diagnostic.open_float)
vim.keymap.set('n', '<Leader>sf', require("telescope.builtin").lsp_workspace_symbols)
vim.keymap.set('n', '<Leader>ss', require("telescope.builtin").lsp_definitions)
vim.keymap.set('n', '<leader>ff', require("telescope.builtin").find_files)
vim.keymap.set('n', '<leader>fg', require("telescope.builtin").live_grep)

vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>")
vim.keymap.set("n", "}", "<cmd>AerialNext<CR>")
vim.keymap.set("n", "<leader>sm", "<cmd>AerialToggle!<CR>")


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

map('n', '<Leader>.', ':EagleWin<CR>', { noremap = true, silent = true })

