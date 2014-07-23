" ================ Colorscheme ======================
" Tomorrow light theme for Terminal, Tomorrow-Night
" for MacVim

if has ('gui_running')
  set background=dark
  colorscheme Tomorrow-Night-Eighties
  set guifont=Source\ Code\ Pro:h12
else
  set background=light
  colorscheme Tomorrow
endif

if has("gui_macvim")
    set macmeta
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
