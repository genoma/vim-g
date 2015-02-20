" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.

call plug#begin('~/.vim/plugged')

" Main packages

Plug 'JulesWang/css.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'burnettk/vim-angular'
Plug 'chrisbra/csv.vim'
Plug 'dsawardekar/wordpress.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'gcmt/wildfire.vim'
Plug 'genoma/vim-less'
Plug 'genoma/vim-literate-coffeescript'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
Plug 'kchmck/vim-coffee-script'
Plug 'kopischke/vim-stay'
Plug 'mattn/emmet-vim'
Plug 'moll/vim-node'
Plug 'morhetz/gruvbox'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'plasticboy/vim-markdown'
Plug 'rking/ag.vim'
Plug 'rstacruz/vim-opinion'
Plug 'ryanss/vim-hackernews'
Plug 'scrooloose/syntastic'
Plug 'shawncplus/phpcomplete.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'wakatime/vim-wakatime'
Plug 'whatyouhide/vim-gotham'
Plug 'svermeulen/vim-easyclip'
Plug 'vim-scripts/PreserveNoEOL'
Plug 'ntpeters/vim-better-whitespace'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'Yggdroot/indentLine'
Plug 'wincent/command-t', { 'do': 'cd ruby/command-t && ruby extconf.rb && make' }

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
