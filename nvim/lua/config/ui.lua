require("catppuccin").setup({
	transparent_background = true,
	custom_highlights = {
		BufferLineBufferSelected = { style = { "bold" } },
	},
})
vim.cmd.colorscheme "catppuccin"

require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})

require('notify').setup({
  background_colour = '#000000'
})

function getccmd()
    return require("noice").api.status.command.get()
end

require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 500,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename', {getccmd, cond = require("noice").api.status.command.has}},
    lualine_c = {'branch'},
    lualine_x = {},
    lualine_y = {'filesize'},
    lualine_z = {'filetype'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  }
})

require('mini.indentscope').setup({})
require('mini.animate').setup({
  scroll = {
    enable = true,
    timing = require('mini.animate').gen_timing.linear({ duration = 10, unit = 'total' })
  },
  resize = { enable = false },
  open = { enable = false },
  close = { enable = false }
})

require('nvim-tree').setup()
