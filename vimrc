" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensiblei https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

" =============== Pathogen ==========================
" This loads all the plugin downloaded as
" git submodules into the bundle directory

execute pathogen#infect()

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Colorscheme ======================

set background=light
colorscheme Tomorrow

" ================ Status Line ======================

set statusline=                                                       " clear the statusline for when vimrc is reloaded
set statusline+=\ \                                                   " Separator
set statusline+=%-3.3n\                                               " buffer number
set statusline+=%t\                                                   " file name
set statusline+=%h%m%r%w                                              " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},                           " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc},                          " encoding
set statusline+=%{&fileformat}]                                       " file format
set statusline+=%=                                                    " right align
" set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\     " highlight
set statusline+=%b,0x%-8B\                                            " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P                                 " offset
set statusline+=%{fugitive#statusline()}                              " Fugitive Statusline
set statusline+=\ \                                                   " Separator

" ================ Indent Guides settings ===========

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=254 ctermbg=254
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=253 ctermbg=253
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']

" ================ Supertab ==========================

let g:SuperTabDefaultCompletionType = "context"

" ================ NETRW =============================

map <silent><leader>n :Explore<cr>
map <silent><leader>,n :Vexplore<cr>

" ================ Better Whitespace =================

let g:strip_whitespace_on_save = 1

" ================ Markdown plasticboy ===============

let g:vim_markdown_folding_disabled=1

" ================ Tim Pope sensible.vim =============

runtime! plugin/sensible.vim

" ================ Color Settings ====================

" Tabline and Tablinefill colors
hi tabline ctermbg = 250 ctermfg = 254
hi tablinefill ctermbg = 255 ctermfg = 254

" Statusline color
hi statusline ctermbg = white ctermfg = blue

" Better Whitespace color
highlight extrawhitespace ctermbg = blue
