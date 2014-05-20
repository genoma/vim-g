" ================ Status Line ======================
" That is a custom status line.
set statusline=                                                       " clear the statusline for when vimrc is reloaded
set statusline+=\ \                                                   " Separator
set statusline+=%-3.3n\                                               " buffer number
set statusline+=%t\                                                   " file name
set statusline+=%h%m%r%w                                              " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},                           " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},                          " encoding
set statusline+=%{&fileformat}]                                       " file format
set statusline+=%=                                                    " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\     " highlight
set statusline+=%b,0x%-8B\                                            " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P                                 " offset
set statusline+=%{fugitive#statusline()}                              " Fugitive Statusline
set statusline+=\ \                                                   " Separator
