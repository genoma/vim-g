" Enable breackindent patch
function! BreakIndent()
  if &breakindent
    set nobreakindent
    set nowrap
    set nolinebreak
    set nolist
  else
    set breakindent
    set wrap
    set linebreak
    set nolist
  endif
endfunction

nnoremap <silent><Leader><leader>b :call BreakIndent()<cr>
