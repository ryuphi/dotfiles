" enables sintax highlighting
syntax on

" better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number
set relativenumber


" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

set signcolumn=number

" plugins
call plug#begin('~/.config/nvim/plugged')

" main color schema
Plug 'dracula/vim', {'as': 'dracula'}

" telescope dependency
Plug 'nvim-lua/plenary.nvim'
" telescope
Plug 'nvim-telescope/telescope.nvim'

" fuzzy find in telescope with fzf
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" git commands
Plug 'tpope/vim-fugitive'

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'

" Treesitter - improve highlighting
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" autocompletation
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
Plug 'octaltree/cmp-look'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '

set noshowmode

Plug 'windwp/nvim-autopairs'

call plug#end()

lua require('ryuphi')

colorscheme dracula


" mappings
let mapleader = "\<space>"

" reload init.vim from anywhere
nnoremap <leader>vr :source ~/.config/nvim/init.vim<CR>

" escape from terminal mode
tnoremap <esc> <C-\><C-n>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

