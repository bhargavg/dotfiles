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

" Create backup, swp, undo files in less annoying folder
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" Enable backups
set backup
set undofile
set swapfile
