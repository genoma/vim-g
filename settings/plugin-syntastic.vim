" SINTASTIC SETTINGS

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
      \ "mode": "active",
      \ "active_filetypes": [],
      \ "passive_filetypes": ['html', 'css'] }

let g:syntastic_html_checkers = ['w3']
let g:syntastic_php_checkers = ['phplint']
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_javascript_checkers = ['jshint']
