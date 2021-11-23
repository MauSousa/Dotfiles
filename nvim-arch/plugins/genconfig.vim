set noshowmode

set noswapfile
set mouse=a
set lazyredraw

" Encoding
set encoding=utf-8
set fileencodings=utf-8
set ttyfast

" Fix backspace indent
set backspace=indent,eol,start

" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

" Enable hidden buffers
set hidden

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

syntax on
set ruler
set number relativenumber

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

set scrolloff=3

" Status bar
set laststatus=2

" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

