" ================ Colorscheme ======================
" Tomorrow light theme for Terminal, Tomorrow-Night
" for MacVim

if has ('gui_running')
  colorscheme seoul256
  set guifont=Source\ Code\ Pro:h12
else
  colorscheme seoul256
endif

if has("gui_macvim")
    set macmeta
endif

" ================ Sounds ===========================
" No bells and whistles on gui
if has ('gui_running')
  set noerrorbells visualbell t_vb=
  autocmd GUIEnter * set visualbell t_vb=
endif
