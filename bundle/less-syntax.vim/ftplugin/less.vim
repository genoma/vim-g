if exists('b:did_indent') && b:did_indent
  " be kind. allow users to override this. Does it work?
  finish
endif

setlocal indentexpr=less_indent#GetIndent(v:lnum)

" Automatically insert the current comment leader after hitting <Enter>
" in Insert mode respectively after hitting 'o' or 'O' in Normal mode
setlocal formatoptions+=ro