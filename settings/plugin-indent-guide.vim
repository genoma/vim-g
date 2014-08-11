" ================ Indent Guides settings ===========
" This is the settings file for vim-indent-guides used
" in conjunction with iTerm2 or MacVim and Tomorrow theme

" Basic plugin settings.
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" On terminal decides the colors of the guides.
" if !has ('gui_running')
"   let g:indent_guides_auto_colors = 0
"   autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=254 ctermbg=254
"   autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=253 ctermbg=253
" endif

let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']
