au BufRead,BufNewFile *.less	set filetype=less.css
au BufEnter *.less :syntax sync fromstart
