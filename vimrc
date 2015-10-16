" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.

call plug#begin('~/.vim/plugged')

" Main packages

Plug 'JulesWang/css.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'Raimondi/delimitMate'

Plug 'Valloric/YouCompleteMe', { 'do': 'python install.py' }

" Too slow
" Plug 'Shougo/neocomplete.vim'

" Keept as a reference
" Plug 'ervandew/supertab'

" Plug 'airblade/vim-gitgutter'

Plug 'mhinz/vim-signify'
Plug 'bling/vim-airline'
" Plug 'burnettk/vim-angular'
Plug 'chrisbra/csv.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'gcmt/wildfire.vim'
Plug 'genoma/vim-less'
Plug 'genoma/vim-literate-coffeescript'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
" Plug 'moll/vim-node'
Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'

Plug 'Chiel92/vim-autoformat'

" Plug 'othree/yajs.vim'
" Plug 'othree/javascript-libraries-syntax.vim'

Plug 'pangloss/vim-javascript'

" Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'plasticboy/vim-markdown'
Plug 'rking/ag.vim'

" Plug 'scrooloose/syntastic'
Plug 'benekastah/neomake'

Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'

" PHP
" Plug 'shawncplus/phpcomplete.vim'
" Plug '2072/PHP-Indenting-for-VIm'
" Plug 'StanAngeloff/php.vim'

" Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-obsession'
" Plug 'tpope/vim-vinegar'
Plug 'rstacruz/vim-opinion'
Plug 'digitaltoad/vim-jade'
Plug 'romainl/Apprentice'
Plug 'junegunn/seoul256.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'nathanaelkane/vim-indent-guides'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Plug 'terryma/vim-multiple-cursors'

" Slowing down a bit too much
" Plug 'wakatime/vim-wakatime'

" Keep it as a reminder if Unite is not exactly malleable and too slow
" Plug 'wincent/command-t', { 'do': 'cd ruby/command-t && ruby extconf.rb && make' }

Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'

" Plug 'Shougo/vimproc.vim', {'do': 'make -f make_mac.mak'}

" Plug 'dkprice/vim-easygrep'

call plug#end()

" mapleader is comma instead of backslash
let mapleader=","

" Omnifunc enabled by default
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \ setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif

" Remove white endlines
function TrimEndLines()
    let save_cursor = getpos(".")
    :silent! %s#\($\n\s*\)\+\%$##
    call setpos('.', save_cursor)
endfunction

au BufWritePre *.* call TrimEndLines()

" Terminal bindings for NeoVim
" terminal emulation
if has("nvim")
  tnoremap <Esc> <C-\><C-n>
  noremap <leader>t :term zsh<CR>
endif

" ========================================

" Prepare sensible/opinion overrides
runtime! plugin/sensible.vim
runtime! plugin/opinion.vim

" Cursorline
set cursorline

" Set nohlsearch
set nohlsearch

" Override Opinion fold method
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Autoread changed files
set autoread

" Override numberwidth
set numberwidth=1

" Syntax sync Vim wiki
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
autocmd BufEnter * :syntax sync fromstart

" Use an undo file
set undofile
" Set a directory to store the undo history
set undodir=~/.vimundo/

" =============== Personalized Settings =============
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
