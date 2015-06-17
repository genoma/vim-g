" ================ Colorscheme & Settings ======================

" set cursor line
set cursorline

" Define themes
if has ('gui_running')
  set background=dark
  colorscheme apprentice
  set guifont=Source\ Code\ Pro\ for\ Powerline:h12
else
  set background=dark
  colorscheme apprentice
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
