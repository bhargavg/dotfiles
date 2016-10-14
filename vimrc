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


source ~/.vim/basic.config.vim
source ~/.vim/basic.folders.vim


""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup the plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

source ~/.vim/basic.plugins.vim
source ~/.vim/lang.haskell.plugins.vim
source ~/.vim/plugin.airline.vim
source ~/.vim/plugin.ctrlp.vim
source ~/.vim/plugin.nerdtree.vim
source ~/.vim/plugin.syntastic.vim

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""
" Default settings
""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on     " required!


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

  " Silence the stupid bell
  set vb t_vb=
endif


autocmd VimEnter * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd VimEnter * match ExtraWhitespace /\s\+\%#\@<!$/


