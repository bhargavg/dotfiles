Plug 'scrooloose/nerdtree'

nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" ignore files with extensions
let NERDTreeIgnore = ['\.o$', '\~$']

" Don't collapse child directories with parent in single line
let NERDTreeCascadeSingleChildDir=0
