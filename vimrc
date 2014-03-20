set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'plasticboy/vim-markdown'

filetype plugin indent on     " required

set encoding=utf-8

" Change mapleader
let mapleader=","

" display incomplete commands
set showcmd

" syntax
syntax enable
colorscheme Tomorrow-Night
if has("gui_running")
  set guifont=Menlo\ Regular:h14
endif

" autosave everything on focus lost
:au FocusLost * silent! wa

" indentation
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase 

" line numbers
set relativenumber 
set number

" invisible characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
nnoremap <leader>l :set list!<CR>

" CtrlP
nnoremap <leader><leader> :CtrlP<CR>

" vim-markdown
let g:vim_markdown_folding_disabled=1

