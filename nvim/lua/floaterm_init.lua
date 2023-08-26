vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
vim.g.floaterm_title = "─$1/$2"
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.cmd("hi FloatermBorder guifg=#74c7ec")
function lazygit()
    vim.cmd("FloatermNew --disposable lazygit")
end

map = vim.api.nvim_set_keymap

map("n", "<Leader>g", "<cmd>FloatermNew --disposable lazygit<CR>", { noremap = true })



