function cat_animation ()
	local animated = {
		"(^•_•^)",
		"(^-_-^)",
		"(^•_•^)",
		"(^-_-^)",
		"(^•_•^)",
		"(^•_•^ )",
		"( ^•_•^)",
	}
	return animated[os.date("%S") % #animated + 1]
end

function getccmd()
    return require("noice").api.status.command.get()
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
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
    lualine_c = {},
    lualine_x = {cat_animation},
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
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
