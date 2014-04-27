" ================ Colorscheme ======================
" Tomorrow light theme
set background=light
colorscheme Tomorrow

if has ('gui_running')
  set guifont=Source\ Code\ Pro:h12
endif


" ================ cmdheight ========================
" Setting the height of the command line on terminal
" to use with Tmux.

if !has ('gui_running')
  set cmdheight=2
endif

" ================ Sounds ===========================
" No bells and whistles on gui
if has ('gui_running')
  set noerrorbells visualbell t_vb=
  autocmd GUIEnter * set visualbell t_vb=
endif
