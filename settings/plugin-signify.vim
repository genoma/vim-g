let g:signify_vcs_list              = [ 'git', 'hg' ]

nnoremap <leader>gt SignifyToggle
nnoremap <leader>gh SignifyToggleHighlight
nnoremap <leader>gr SignifyRefresh
nnoremap <leader>gd SignifyDebug

" hunk jumping
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

" hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)

