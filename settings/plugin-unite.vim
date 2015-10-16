let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_max_cache_files = 0

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_rec,file_rec/async',
      \ 'ignore_pattern', 'idea\|node_modules\|bower_components')

let g:unite_source_rec_async_command = [ 'ag', '-l', '-g', '', '--nocolor' ]

nnoremap <leader>f :<C-u>Unite -buffer-name=files file<CR>
" nnoremap <leader>r :<C-u>Unite -buffer-name=files file_rec/async:!<CR>
nnoremap <silent> <leader>b :<C-u>Unite -buffer-name=buffer buffer bookmark<CR>
nnoremap <leader>y :<C-u>Unite -buffer-name=yank history/yank<CR>

nnoremap <leader>r :<C-u>FZF<CR>
