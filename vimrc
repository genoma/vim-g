" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundle configuration
NeoBundleFetch 'Shougo/neobundle.vim'
" VimProc!
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" Main packages

NeoBundle 'JulesWang/css.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'bling/vim-airline'
NeoBundle 'burnettk/vim-angular'
NeoBundle 'chrisbra/csv.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'enthooz/vim-razor'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'genoma/vim-less'
NeoBundle 'genoma/vim-literate-coffeescript'
NeoBundle 'genoma/vim-netrw'
NeoBundle 'honza/vim-snippets'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'othree/html5.vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'othree/yajs.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'rking/ag.vim'
NeoBundle 'rstacruz/vim-opinion'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'shime/vim-livedown'
NeoBundle 'sodapopcan/vim-twiggy'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'whatyouhide/vim-gotham'
NeoBundle 'miyakogi/conoline.vim'
NeoBundle 'wakatime/vim-wakatime'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" mapleader is comma instead of backslash
let mapleader=","

" Omnifunc enabled by default
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \ setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif

" set omnifunc=syntaxcomplete#Complete

" Prepare sensible/opinion overrides
runtime! plugin/sensible.vim
runtime! plugin/opinion.vim

" set nohlsearch
set nohlsearch

" =============== Personalized Settings =============
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
