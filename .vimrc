" Plugins 

call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" colorschemes
Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'  
Plug 'mhartington/oceanic-next'  
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' 

Plug 'bling/vim-airline' " Status bar
Plug 'mhinz/vim-startify' " Start screen for Vim
Plug 'matze/vim-move' " Swappint hte line above or down
Plug 'airblade/vim-gitgutter' " Git plugin for git diff
Plug 'jiangmiao/auto-pairs' " Auto pairs for brackets and quotes
Plug 'scrooloose/nerdtree' " NerdTree
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'hashivim/vim-terraform' " Terraform plugin
Plug 'juliosueiras/vim-terraform-completion' " Terraform auto-completion plugin
Plug 'junegunn/fzf.vim' " Searching through directories

" Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)

call plug#end()

colorscheme gruvbox
" colorscheme OceanicNext
" let g:material_terminal_italics = 1
" variants: default, palenight, ocean, lighter, darker, default-community,
           " palenight-community, ocean-community, lighter-community,
           " darker-community
" let g:material_theme_style = 'darker'
" colorscheme material

if (has('termguicolors'))
  set termguicolors
endif

" variants: mirage, dark
" let ayucolor="mirage"
" colorscheme ayu

" Create shortcut Ctrl+n for open/close NERDTreeToggle
nnoremap <C-x> :NERDTreeToggle<CR>

nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

nmap <C-z> :TagbarToggle<CR>

" set mouse=a  " enable mouse

" Turn on syntax highlighting
syntax on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" let g:indent_guides_enable_on_vim_startup = 1
let g:move_key_modifier = 'C'

" Airline settings
let g:airline_powerline_fonts = 1 
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1

" Terraform settings
let g:terraform_fmt_on_save=1
let g:terraform_align=1


" Leader bind to space
" let mapleader = ","

" Netrw file explorer settings
let g:netrw_banner = 0 " hide banner above files
let g:netrw_liststyle = 3 " tree instead of plain view
let g:netrw_browse_split = 3 " vertical split window when Enter pressed on file

" turn off search highlight
" nnoremap ,<space> :nohlsearch<CR>
