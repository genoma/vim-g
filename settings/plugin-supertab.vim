" =================== SuperTab ==================
set omnifunc=syntaxcomplete#Complete
set completefunc=syntaxcomplete#Complete

let g:SuperTabCrMapping = 0
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-x><c-u>'
autocmd FileType *
    \ if &omnifunc != '' |
    \     call SuperTabChain(&omnifunc, '<c-p>') |
    \ endif
