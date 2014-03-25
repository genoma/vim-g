" Pathogen
execute pathogen#infect()

" SETTINGS
" Mixed settings with Tim Pope Sensible.vim overrides

" {{{ Leader is ,
let mapleader = ","
" }}}

" {{{ VIM user interface
" Set Colorscheme
set t_Co=256
set background=light
colorscheme Tomorrow

" Relative Numbers
set relativenumber
set number

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" For regular expressions turn magic on
set magic

" Add a bit extra margin to the left
set foldcolumn=1

" }}}

" {{{ Text, tab and indent related
" Use spaces instead of tabs
set expandtab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

"Don't wrap lines
set nowrap

"Smart indent
set si
" }}}

" {{{ Moving around, tabs, windows and buffers
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
" map <leader>t<leader> :tabnext<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
" Remember info about open buffers on close
set viminfo^=%
" }}}

" {{{ Files, backups and undo
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" }}}

" {{{ Status line
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
set statusline+=%{fugitive#statusline()}                              " fugitive
set statusline+=\ \                                                   " Separator
" }}}

" {{{ Editing mappings
" Remap VIM 0\$ to first non-blank character
map 0 ^
map $ g_
" }}}

" {{{ Force filetype
" au BufRead,BufNewFile *.tpl set filetype=smarty.html
" au BufRead,BufNewFile *.scss set filetype=scss.css
" au BufRead,BufNewFile *.sass set filetype=sass.css
" au BufRead,BufNewFile *.less set filetype=less.css
" }}}

" {{{ Misc settings
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Fix Syntax Highlight
autocmd BufEnter * :syntax sync fromstart

" Disable paste mode when leaving Insert Mode
au InsertLeave * set nopaste

" Custom Invisibles
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Scroll
set scrolloff=8     " Number of lines from vertical edge to start scrolling
set sidescrolloff=15  " Number of cols from horizontal edge to start scrolling
set sidescroll=1    " Number of cols to scroll at a time

" Sane Regexes
nnoremap / /\v
vnoremap / /\v

" Auto reload file if changes detected
set autoread

" Redraw
map <Leader>,,b :redraw!<cr>

" Claculator
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
" }}}

" {{{ Indent Guides settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=254 ctermbg=254
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=253 ctermbg=253
" }}}

" {{{ Fold Method Marker
set foldmethod=marker
" }}}

" {{{ Convert Spaces from 4 to 2
function! ConvertSpaces()
  setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
  %retab! " Convert the 4 space indents to tabs
  setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  %retab  " Convert all tabs to 2 space indents
endfunction
nmap <Leader>,c :call ConvertSpaces()<CR>
" }}}

" {{{ Convert 2 spaces to 4
function! ConvertFourSpaces()
  setlocal tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
  %retab! " Convert the 2 space indents to tabs
  setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
  %retab  " Convert all tabs to 4 space indents
endfunction
nmap <Leader>,C :call ConvertFourSpaces()<CR>
" }}}

" {{{ Autocomplete
" let g:SuperTabDefaultCompletionType = "context"

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,coffee,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'mail' : 1,
      \ 'mkd' : 1
      \}

" }}}

" {{{ NETRW
map <silent><leader>n :Explore<cr>
map <silent><leader>,n :Vexplore<cr>
" }}}

" {{{ Better Whitespace Settings
let g:strip_whitespace_on_save = 1
" }}}

"{{{ Markdown plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1
"}}}

"{{{ CommandT
map <leader>f :CommandT<cr>
"}}}

" {{{ Tim Pope Sensible.vim

" Load Tim Pope Sensible before Tabline settings
runtime! plugin/sensible.vim
" }}}

" {{{ TabLine and TabLineFill settings
hi TabLine ctermbg = 250 ctermfg = 254
hi TabLineFill ctermbg = 255 ctermfg = 254
" }}}

" {{{ StatusLine color
hi StatusLine ctermbg = white ctermfg = blue
" }}}

" {{{ Better Whitespace color
highlight ExtraWhitespace ctermbg = blue
" }}}
