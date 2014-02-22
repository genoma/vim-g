" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles:

Bundle 'gmarik/vundle'

Bundle 'bling/vim-airline'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'csscomb/csscomb-for-vim'
Bundle 'gcmt/wildfire.vim'
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kshenoy/vim-signature'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mattboehm/vim-accordion'
Bundle 'mattn/emmet-vim'
Bundle 'mbbill/undotree'
Bundle 'mhinz/vim-signify'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'plasticboy/vim-markdown'
Bundle 'Raimondi/delimitMate'
Bundle 'rking/ag.vim'
"Bundle 'scrooloose/nerdcommenter'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

Bundle 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'

" SETTINGS
" Mixed settings with Tim Pope Sensible.vim overrides

"{{{ Leader is ,
let mapleader = ","
let g:mapleader = ","
"}}}

"{{{ VIM user interface

" Set Colorscheme
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

"}}}

"{{{ Text, tab and indent related

" Use spaces instead of tabs
set expandtab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set si "Smart indent
set nowrap "Don't wrap lines

"}}}

"{{{  Moving around, tabs, windows and buffers

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
map <leader>t<leader> :tabnext

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

"}}}

"{{{ Files, backups and undo
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
"}}}

"{{{ Status line
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
set statusline+=%{fugitive#statusline()}     " fugitive
"}}}

"{{{ Editing mappings
" Remap VIM 0\$ to first non-blank character
map 0 ^
map $ g_
"}}}

"{{{  Misc--> paste is <leader>pp
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Fix Syntax Highlight
autocmd BufEnter * :syntax sync fromstart

" gv select the previously selected area, gv select the previously pasted area
nnoremap gp `[v`]

"}}}

" {{{Remap for faster write and close
cab W w
cab Q q
"}}}

" {{{Force filetype
au BufRead,BufNewFile *.tpl set filetype=smarty.html
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.sass set filetype=sass.css
"}}}

"{{{ Mixed settings

" select all
map <Leader>a ggVG

" Disable paste mode when leaving Insert Mode
au InsertLeave * set nopaste

" Custom Invisibles
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Save on FocusLost
au FocusLost * :silent! wall
au FocusLost * call feedkeys("\<C-\>\<C-n>")

" Scroll
set scrolloff=8         " Number of lines from vertical edge to start scrolling
set sidescrolloff=15    " Number of cols from horizontal edge to start scrolling
set sidescroll=1        " Number of cols to scroll at a time

" Sane Regexes
nnoremap / /\v
vnoremap / /\v

" Persistent Undo
if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

"}}}

" {{{Indent Guides settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=254 ctermbg=254
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=253 ctermbg=253
"}}}

" {{{Fold Method Marker
set foldmethod=marker
"}}}

" {{{Convert Spaces from 4 to 2 <leader>,c
function! ConvertSpaces()
  setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
  %retab! " Convert the 4 space indents to tabs
  setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  %retab  " Convert all tabs to 2 space indents
endfunction
nmap <Leader>,c :call ConvertSpaces()<CR>
"}}}

" {{{NETRW
map <silent><leader>n :Explore<cr>
map <silent><leader>,n :Vexplore<cr>
" }}}

"{{{ UndoTree Mapping
nnoremap <silent><leader>u  :UndotreeToggle<cr>
"}}}

"{{{ Vim Markdown
let g:vim_markdown_folding_disabled=1
"}}}

"{{{ SuperTab
let g:SuperTabContextDefaultCompletionType = "<c-n>"
"}}}

"{{{ Tim Pope Sensible.vim

" Load Tim Pope Sensible before Tabline settings
runtime! plugin/sensible.vim
"}}}

"{{{ TabLine and TabLineFill settings
hi TabLine ctermbg=250 ctermfg=254
hi TabLineFill ctermbg=255 ctermfg=254
"}}}
