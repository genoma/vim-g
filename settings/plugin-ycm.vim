" =================== YouCompleteMe ====================
" Basic settings for YCM and Omnicomplete/Syntaxcomplete
" ======================================================

set omnifunc=syntaxcomplete#Complete
set completefunc=syntaxcomplete#Complete

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_semantic_triggers =  {
      \   'c' : ['->', '.'],
      \   'objc' : ['->', '.'],
      \   'ocaml' : ['.', '#'],
      \   'cpp,objcpp' : ['->', '.', '::'],
      \   'perl' : ['->'],
      \   'php' : ['->', '::'],
      \   'cs,css,less,sass,scss,coffee,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
      \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
      \   'ruby' : ['.', '::'],
      \   'lua' : ['.', ':'],
      \   'erlang' : [':'],
      \ }
