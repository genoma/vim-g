" Unite

let g:unite_source_history_yank_enable = 1
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    -start-insert history/yank<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  -start-insert buffer<cr>
nnoremap <leader>s :<C-u>Unite -buffer-name=grep grep<cr>

" Ignore
call unite#custom#source('file_rec/async,file', 'ignore_pattern', 'bower_components\|dist\|node_modules\|maps\|.sass-cache\|\.png$\|\.jpg$\|\.svg$\|\.gif$')

" Configure Ag and use it instead of grep
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
      \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
      \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''
