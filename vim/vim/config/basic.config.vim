"Semi-colon is the leader key
let mapleader=";"

set number "Show line numbers


set hidden "Allows to open a new file without closing the current edited one

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

set shortmess=atI " shortens messages

set splitbelow   " Split the window below
set splitright   " Split the window right

" Write as sudo
cmap w!! w !sudo tee > /dev/null %

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l