Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

nnoremap ,f :Files<CR>
nnoremap ,b :History<CR>

"Replace the default line completion
imap <C-x><C-l> <plug>(fzf-complete-line)

"Make it more like Ctrl-P
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
