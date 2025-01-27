vim.g.python3_host_prog = "/usr/bin/python3"
vim.opt.mouse = ''
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.g.UltiSnipsExpandTrigger = '<tab>'
vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<c-k>'
vim.g.UltiSnipsEditSplit = "vertical"
vim.g.UltiSnipsSnippetsDir = "~/.config/nvim/snippets"

require("config.keybinds")
