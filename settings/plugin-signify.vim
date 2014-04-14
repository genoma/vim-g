" ================ Vim Signify Settings ===========
" This is the configuration file for vim-signify
" colors adapted to Tomorrow theme with iTerm 2
let g:signify_vcs_list = [ 'svn', 'git' ]

" highlight lines in Sy and vimdiff etc.)

highlight DiffAdd           cterm=bold ctermbg=none ctermfg=250
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=250
highlight DiffChange        cterm=bold ctermbg=none ctermfg=250

" highlight signs in Sy

highlight SignifySignAdd    cterm=bold ctermbg=255  ctermfg=250
highlight SignifySignDelete cterm=bold ctermbg=255  ctermfg=250
highlight SignifySignChange cterm=bold ctermbg=255  ctermfg=250
