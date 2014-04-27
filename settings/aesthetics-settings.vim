" ================ Colorscheme ======================
" Tomorrow light theme
set background=light
colorscheme Tomorrow

if has ('gui_running')
  set guifont=Source\ Code\ Pro:h12
endif


" ================ cmdheight ========================
" Setting the height of the command line to whatever
" you see fit
set cmdheight=2


" ================ Sounds ===========================
" No bells and whistles
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
