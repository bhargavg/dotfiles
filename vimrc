set nocompatible               " be iMproved
filetype off                   " required!


""""""""""""""""""""""""""""""""""""""""""""""""""
" Initializing folder structure
""""""""""""""""""""""""""""""""""""""""""""""""""

" Setup vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Creating backup folders
" Copied from http://stackoverflow.com/questions/4331776/change-vim-swap-backup-undo-file-name#9528322
if isdirectory('~/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif

if isdirectory('~/.vim/undo') == 0
  :silent !mkdir -p ~/.vim/undo >/dev/null 2>&1
endif

if isdirectory('~/.vim/swp') == 0
  :silent !mkdir -p ~/.vim/swp >/dev/null 2>&1
endif

call plug#begin('~/.vim/plugged')

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" Color schemes
Plug 'molokai'
Plug 'nelstrom/vim-mac-classic-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'gmarik/ingretu'

" Plugins from GIT
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'Indent-Guides'
Plug 'jQuery'
Plug 'tomtom/tcomment_vim'

Plug 'scrooloose/syntastic'

Plug 'godlygeek/tabular'

Plug 'rking/ag.vim'

Plug 'christoomey/vim-tmux-navigator'

" Depenency for snipmate
Plug 'tlib'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'keith/swift.vim'

" Sparkup
" Plugin 'rstacruz/sparkup.git', {'rtp': 'vim/'}
Plug 'mattn/emmet-vim'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""
" Default settings
""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on     " required!

set number

"Ctrl.p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = ''

if has("gui_running")

  set background=dark
  colorscheme molokai

  " Set font based on OS
  if has("gui_gtk2")
    set guifont=Fira\ Code 10
  elseif has("gui_macvim")
    set macligatures
    set guifont=Fira\ Code:h12
  elseif has("gui_win32")
    set guifont=Fira\ Code:h11
  endif


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


"Default Indentation settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"Indentation based on filetypes
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType php  setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2


set ignorecase  " ignore case while searching
set smartcase   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch    " highlight search terms


set showcmd " show the intermediate commands

set shortmess=atI             " shortens messages

set splitbelow   " Split the window below
set splitright   " Split the window right

"Show line numbers
set number

" Create backup, swp, undo files in less annoying folder
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" Enable backups
set backup
set undofile
set swapfile

" Write as sudo
cmap w!! w !sudo tee > /dev/null %

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let mapleader=";"


""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""

"NerdTree settings
"autocmd VimEnter * NERDTree "Show NERDTree on statup of VIM
"autocmd VimEnter * wincmd p "Make the window to have focus

nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>


" airline configuration
let g:airline_powerline_fonts = 1

" Indent guides
let g:indent_guides_guide_size = 1


" Syntastic
let g:syntastic_javascript_checkers = ['jslint']


" Sparkup
let g:sparkupExecuteMapping = '<c-e>'
let g:sparkupNextMapping = '<c-ee>'


autocmd VimEnter * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd VimEnter * match ExtraWhitespace /\s\+\%#\@<!$/
