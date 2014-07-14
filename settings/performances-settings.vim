" =================== Performance settings ==================
" lazyredraw for better terminal performances
if !has ('gui_running')
  set lazyredraw
endif


" https://groups.google.com/forum/#!topic/vim_dev/3PNuYKQ9EAk
let g:syntax = '???'
let g:currentTag = '???'
autocmd CursorHold * let g:syntax = SyntaxItem()
autocmd CursorHold * let g:currentTag = tagbar#currenttag('%s','','s')
