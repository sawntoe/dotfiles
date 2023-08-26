-- Setup colourscheme
require("catppuccin").setup({
	transparent_background = true,
	custom_highlights = {
		BufferLineBufferSelected = { style = { "bold" } },
	},
})
vim.cmd.colorscheme "catppuccin"

-- Setup Mason & LSPconfig
NOI = false 
if not NOI then
	require("mason").setup()
	require("mason-lspconfig").setup()
	require("cmp_init")
	require('lsp_init')
end

-- Setup Telescope & nvim-tree
require('telescope').setup() -- :help telescope.setup()
require("nvim-tree").setup() -- :help nvim-tree-setup

-- Setup bufferline & lualine
vim.opt.termguicolors = true
-- require("bufferline").setup()
 -- :help bufferline.nvim
-- require('lualine').setup()
require('lualine_init')

-- Setup ultisnips && knap
vim.g.UltiSnipsExpandTrigger = '<tab>'
vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
vim.g.UltiSnipsJumpBackwardTrigger = '<c-k>'

require('knap_init')

-- Setup Leap, nvim-autopairs, Comment.nvim, noice.nvim, vim-floatterm

--if not vim.g.vscode then
--    require("noice").setup()
--end

require("nvim-autopairs").setup()
require('leap').add_default_mappings()
vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
vim.api.nvim_set_hl(0, 'LeapLabelPrimary', { link = 'String' })
vim.api.nvim_set_hl(0, 'LeapLabelSecondary', { link = 'Function' })
-- require('Comment').setup() -- :h comment.config
require('nvim_comment').setup()
require('noice_init')
require('floaterm_init')
-- Setup TreeSitter

require('nvim-treesitter.configs').setup({
	ensure_installed = {"vim", "regex", "lua", "bash", "markdown", "markdown_inline"},
	auto_install = true,
})


-- Setup mini.nvim standalones
require('mini_init')
require('mini.animate').setup(
    {   
        scroll = {
            enable = true,
            timing = require('mini.animate').gen_timing.linear({ duration = 10, unit = 'total' })
        },
        resize = {
            enable = false
        },
        open = {
            enable = false
        },
        close = {
            enable = false
        }
    }
)

require('venn_init')

-- Setup file handlers
-- require('hex').setup()

-- Setup AI related stuff
-- require('chatgpt_init')

require('keybinds')
vim.opt.showmode = false
