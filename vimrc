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
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'plasticboy/vim-markdown'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/PHP-correct-Indenting'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/nerdtree'
Bundle 'editorconfig/editorconfig-vim'

" snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

filetype plugin indent on     " required

set encoding=utf-8

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" Global ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Change mapleader
let mapleader=","

" remap ; to :
nnoremap ; :

" quicker escaping
inoremap jj <ESC>

" display incomplete commands
set showcmd

" share clipboard in terminal mode
set clipboard=unnamed

" syntax
syntax enable
colorscheme Tomorrow-Night
if has("gui_running")
  set guifont=Menlo\ Regular:h14
endif

" autosave everything on focus lost
:au FocusLost * silent! wa

" reload open files
set autoread

" indentation
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start

" wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase 

" disable search results highlighting
nnoremap <leader>h :noh<CR>

" line numbers
set relativenumber 
set number

" invisible characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
nnoremap <leader>l :set list!<CR>

" open vertical split
nnoremap <leader>w <C-w>v<C-w>l

" splits navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" CtrlP
nnoremap <leader><leader> :CtrlP<CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|exports'

" vim-markdown
let g:vim_markdown_folding_disabled=1

" Ag
nnoremap <leader>a :Ag<space>

" edit vimrc
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" center screen on current line
nnoremap <space> zz
nnoremap n nzz
nnoremap N Nzz

" close current buffer
nnoremap <leader>q :bd<CR>

" GitGutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" NERDTree
map <leader>t :NERDTreeToggle<CR>

" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
