set nocompatible               " be iMproved
filetype off                   " required!


""""""""""""""""""""""""""""""""""""""""""""""""""
" Initializing folder structure
""""""""""""""""""""""""""""""""""""""""""""""""""

" Setting up Vundle - the vim plugin bundler
" Copied from http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
	let iCanHazVundle=0
endif

" Creating backup folders
" Copied from http://stackoverflow.com/questions/4331776/change-vim-swap-backup-undo-file-name#9528322
if isdirectory('~/.vim/.backup') == 0
  :silent !mkdir -p ~/.vim/.backup >/dev/null 2>&1
endif

if isdirectory('~/.vim/.undo') == 0
  :silent !mkdir -p ~/.vim/.undo >/dev/null 2>&1
endif

if isdirectory('~/.vim/.swap') == 0
  :silent !mkdir -p ~/.vim/.swap >/dev/null 2>&1
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundles
""""""""""""""""""""""""""""""""""""""""""""""""""

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

" Initialize Vundle
if iCanHazVundle == 0
	echo "Installing Bundles, please ignore key map error messages"
	echo ""
	:BundleInstall
endif


""""""""""""""""""""""""""""""""""""""""""""""""""
" Default settings
""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on     " required!

set number

"Ctrl.p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


if has("gui_running")

  set background=dark
  colorscheme molokai

  " Set font based on OS
  if has("gui_gtk2")
	set guifont=Inconsolata-dz\ for\ Powerline\ 10
  elseif has("gui_macvim")
	set guifont=Inconsolata-dz\ for\ Powerline:h12
  elseif has("gui_win32")
    set guifont=Inconsolata-dz\ for\ Powerline:h11
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
set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"Indentation based on filetypes
autocmd FileType html set tabstop=2|set shiftwidth=2|set softtabstop=2
autocmd FileType php set tabstop=4|set shiftwidth=4|set softtabstop=4


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
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

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

