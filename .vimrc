set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Color schemes
Bundle 'molokai'
Bundle 'nelstrom/vim-mac-classic-theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'gmarik/ingretu'

" Plugins from GIT
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'Indent-Guides'
Bundle 'jQuery'
Bundle 'tomtom/tcomment_vim'

Bundle 'scrooloose/syntastic'

Bundle 'godlygeek/tabular'

" Depenency for snipmate
Bundle 'tlib'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Sparkup
" Bundle 'rstacruz/sparkup.git', {'rtp': 'vim/'}
Bundle 'mattn/emmet-vim'

filetype plugin indent on     " required!


" Configuration starts

set number

"Ctrl.p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


if has("gui_running")

  set background=dark
  colorscheme molokai

  set guifont=Inconsolata-dz\ for\ Powerline:h12

  "Hide scrollbars
  set guioptions-=b "bottom scrollbar
  set guioptions-=R "right scrollbar in vertical split window
  set guioptions-=r "right scrollbar
  set guioptions-=L "left scrollbar in vertical split window
  set guioptions-=l "left scrollbar
  set guioptions-=T "toolbar


  "Show cursor X - wire
  " set cursorline
  " set cursorcolumn
endif


"Allows to open a new file without closing the current edited one
set hidden


"Indentation settings
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set ignorecase  " ignore case while searching
set smartcase   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch    " highlight search terms


set showcmd " show the intermediate commands


set shortmess=atI             " shortens messages

set splitbelow   " Split the window below
set splitright   " Split the window right

"Show line numbers
set number

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


let mapleader=";"

"NerdTree settings
"autocmd VimEnter * NERDTree "Show NERDTree on statup of VIM
"autocmd VimEnter * wincmd p "Make the window to have focus

nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>


" airline configuration
let g:airline_powerline_fonts = 1

" Indent guides
let g:indent_guides_guide_size = 1

" Create backup, swp, undo files in less annoying folder
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" Write as sudo
cmap w!! w !sudo tee > /dev/null %

" Syntastic
let g:syntastic_javascript_checkers = ['jslint']


" Sparkup
let g:sparkupExecuteMapping = '<c-e>'
let g:sparkupNextMapping = '<c-ee>'
