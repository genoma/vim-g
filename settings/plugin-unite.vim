nnoremap <leader>f :<C-u>Unite file<CR>
nnoremap <leader>r :<C-u>Unite file_rec/async:!<CR>
nnoremap <silent> <leader>b :<C-u>Unite buffer bookmark<CR>

let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :<C-u>Unite history/yank<CR>
