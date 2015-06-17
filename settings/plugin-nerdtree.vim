" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map - :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 40
