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

filetype plugin indent on     " required

" Change mapleader
let mapleader=","

colorscheme Tomorrow-Night
if has("gui_running")
  set guifont=Menlo\ Regular:h14
endif

" CtrlP
nnoremap <leader><leader> :CtrlP<CR>

