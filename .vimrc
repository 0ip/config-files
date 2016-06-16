"   __  __ _ _____ _________
"   \ \ | |_|     V  __/  __|
"    \ \| | | | | | |  | [__
" [_] \___|_|_|_|_|_|  \____|

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

" Distraction-free writing via :Goyo
Plug 'junegunn/goyo.vim'

" File finder
Plug 'ctrlpvim/ctrlp.vim'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Align lists, e.g. :Tab /=
Plug 'godlygeek/tabular'

" Quoting/parenthesizing helper, e.g. cs'<q>
Plug 'tpope/vim-surround'

" Language-specifc plugins
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'elixir-lang/vim-elixir'

Plug 'scrooloose/syntastic'
Plug 'Shougo/neocomplete.vim'

" Themes
Plug 'sjl/badwolf'
Plug 'zeis/vim-kolor'
Plug 'junegunn/seoul256.vim'
Plug 'cocopon/iceberg.vim'
Plug 'w0ng/vim-hybrid'
Plug 'molokai'
Plug 'alessandroyorba/alduin'

call plug#end()

set nocompatible

set nu

set timeoutlen=50
set history=256
set pastetoggle=<F10>
set ignorecase
set smartcase

set cursorline

set nowrap
set textwidth=0

set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set scrolloff=4

set novisualbell
set noerrorbells

set ruler

set mouse=a
set ttymouse=xterm2

let g:neocomplete#enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_error_symbol = "⨯"
let g:syntastic_style_warning_symbol = '?'
let g:syntastic_style_error_symbol = 'ϟ'

syntax on
let g:seoul256_background=233
colo alduin
set laststatus=2
set noshowmode

let g:bufferline_echo=0
let g:airline_powerline_fonts=1
let g:airline_theme='luna'
