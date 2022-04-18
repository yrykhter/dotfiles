" Don't try to be vi compatible
set nocompatible

filetype plugin indent on
" Color scheme (terminal)
set t_Co=256
set background=dark

" colorscheme monokai 

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Plugins 

call plug#begin('~/.vim/plugged')

" colorscheme
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'dracula/vim'

Plug 'rosenfeld/conque-term'
" Plug 'klen/python-mode'	  
" Plug 'davidhalter/jedi-vim' 	
" Plug 'mitsuhiko/vim-jinja'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'matze/vim-move'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'hashivim/vim-terraform'

Plug 'ryanoasis/vim-devicons'

call plug#end()

" Uncomment to use dracula theme as a default
" color dracula

" Uncomment gruvbox theme as a default 
autocmd vimenter * ++nested colorscheme gruvbox

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

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Create shortcut Ctrl+n for open/close NERDTreeToggle
nnoremap <C-n> :NERDTreeToggle<CR>

" let g:indent_guides_enable_on_vim_startup = 1
let g:move_key_modifier = 'C'

" syntastic opts
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_go_checkers=['golint', 'gofmt']
let g:syntastic_python_checkers=['pylint', 'pep8', 'flake8']
let g:syntastic_sh_checkers=['shellcheck']
let g:syntastic_yaml_checkers = [ "yamllint" ]
let g:syntastic_quiet_messages = { "type": "style" }

"=====================================================
" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
" let g:pymode_rope = 0
" let g:pymode_rope_completion = 0
" let g:pymode_rope_complete_on_dot = 0

" документация
" let g:pymode_doc = 0
" let g:pymode_doc_key = 'K'

" проверка кода
" let g:pymode_lint = 1
" let g:pymode_lint_checker = 'pyflakes,pep8'
" let g:pymode_lint_ignore="E501,W601,C0110"

" провека кода после сохранения
" let g:pymode_lint_write = 1

" поддержка virtualenv
" let g:pymode_virtualenv = 1

" установка breakpoints
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
" let g:pymode_folding = 0

" возможность запускать код
" let g:pymode_run = 0

" Disable choose first function/method at autocomplete
" let g:jedi#popup_select_first = 0


"Не в список плагинов
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1

" Terraform settings
let g:terraform_fmt_on_save=1
let g:terraform_align=1
