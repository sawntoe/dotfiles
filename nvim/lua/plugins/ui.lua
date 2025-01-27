return {
  { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000 
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'echasnovski/mini.indentscope',
    version = '*'
  },
  {
    'echasnovski/mini.animate',
    version = '*'
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  }
}
