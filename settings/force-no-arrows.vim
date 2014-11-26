" Learn to use hjkl the hard way!

nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

vmap <up> <nop>
vmap <down> <nop>
vmap <left> <nop>
vmap <right> <nop>

" This is to disable YCM up/down bindings conflict.
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_select_completion = ['<TAB>']
