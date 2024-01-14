call plug#begin('~/.config/nvim/plugged')

" Dependencies
Plug 'nvim-lua/plenary.nvim' " Required by telescope.nvim & neorg
Plug 'nvim-tree/nvim-web-devicons' " recommended (nvim-tree.lua, bufferline.nvim, lualine.nvim)
Plug 'MunifTanjim/nui.nvim' " Required by noice.nvim
Plug 'rcarriga/nvim-notify' " Required by noice.nvim
Plug 'hrsh7th/vim-vsnip' " Required by LSP
Plug 'hrsh7th/vim-vsnip-integ'

" Setup Mason & LSPConfig
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" Setup cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" File managers
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-tree/nvim-tree.lua'

" Lines
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'nvim-lualine/lualine.nvim'

" Latex
Plug 'SirVer/ultisnips'
Plug 'ckunte/latex-snippets-vim', { 'tag': '*' }
Plug 'frabjous/knap'

" Speed plugins
Plug 'ggandor/leap.nvim'
Plug 'windwp/nvim-autopairs'
" Plug 'numToStr/Comment.nvim'
Plug 'terrortylor/nvim-comment'

" Aesthetic plugins
Plug 'folke/noice.nvim' " , Cond(!exists('g:vscode'))
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'echasnovski/mini.animate'
Plug 'echasnovski/mini.indentscope'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Presentation tools
Plug 'nvim-neorg/neorg'
Plug 'jbyuki/venn.nvim'

" File handlers
Plug 'RaafatTurki/hex.nvim'

" Debug
Plug 'dstein64/vim-startuptime'

" Terminals
Plug 'voldikss/vim-floaterm'

" AI
Plug 'zbirenbaum/copilot.lua'
Plug 'jackMort/ChatGPT.nvim'
" Meme
Plug 'eandrju/cellular-automaton.nvim'

call plug#end()

autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall
  \| endif

set number relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let mapleader = "\\"
let g:python3_host_prog = '/usr/bin/python3'
" let g:floaterm_borderchars = "─│─│╭╮╯╰"
lua require('plugins')

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set mouse=
