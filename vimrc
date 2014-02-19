if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'csscomb/csscomb-for-vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'bling/vim-airline'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'mattboehm/vim-accordion'
NeoBundle 'mbbill/undotree'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'gcmt/wildfire.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

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
command WQ wq
command Wq wq
command W w
command Q q
"}}}

" {{{Force filetype
au BufRead,BufNewFile *.tpl set filetype=smarty.html
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.sass set filetype=sass.css
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

" {{{NEOCOMPLETE

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplete#max_list = 20

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Ctacs
let g:neocomplete#ctags_command = "/usr/local/bin/ctags"

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

function! s:my_cr_function()
  " return neocomplete#close_popup()<CR>
  " For no inserting <CR> key.
   return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable omni completion.
autocmd FileType css,scss,sass setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,smarty setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript,coffee setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"}}}

" {{{UNITE
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>r :<C-u>Unite -start-insert file_rec/async:!<CR>
nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
"}}}

" {{{NETRW
map <silent><leader>n :Explore<cr>
map <silent><leader>,n :Vexplore<cr>
" }}}

"{{{ UndoTree Mapping
nnoremap <silent><leader>u  :UndotreeToggle<cr>
"}}}

"{{{ Tim Pope Sensible.vim

" Load Tim Pope Sensible before Tabline settings
runtime! plugin/sensible.vim
"}}}

"{{{ TabLine and TabLineFill settings
hi TabLine ctermbg=250 ctermfg=254
hi TabLineFill ctermbg=255 ctermfg=254
"}}}
