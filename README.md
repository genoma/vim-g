g-vim (genoma's vim)
=====

Vim custom configuration built for interface web designers, with a small but functional set of plugins.

The aim of this Vim setup is to be as functional as possible, using the built-in Vim plugins as **netrw** and **omni completion**.


# INFORMATIONS

This setup has been tested with Vim compiled from source, latest iTerm2 nightly build and Homebrew on OSX.

## BASIC STEPS

### Homebrew
Download **Homebrew** from [this link](http://brew.sh/) and follow the instructions. Install **the_silver_searcher**

`$ brew install the_silver_searcher`

### VIM
Clone the official repository

`$ hg clone https://vim.googlecode.com/hg/ vim`

`$ hg pull`

`$ hg update`

Compile the source

`$ ./configure --enable-multibyte --with-tlib=ncurses --enable-luainterp --enable-cscope --with-features=huge --enable-rubyinterp --enable-pythoninterp --enable-gui=no --without-x`

`$ make && make install`

Clone the repository in your home directory

`git clone https://github.com/genoma/g-vim.git .vim`

Link the vimrc to ~/.vimrc

`ln -s ~/.vim/vimrc ~/.vimrc`

# PLUGINS

- kchmck/vim-coffee-script
- scrooloose/nerdcommenter
- mattn/emmet-vim
- rking/ag.vim
- csscomb/csscomb-for-vim
- Raimondi/delimitMate
- nathanaelkane/vim-indent-guides
- tpope/vim-surround
- chriskempson/vim-tomorrow-theme
- Shougo/unite.vim
- Shougo/vimshell.vim
- Lokaltog/vim-easymotion
- bling/vim-airline
- ntpeters/vim-better-whitespace
- mattboehm/vim-accordion
- mbbill/undotree
- mhinz/vim-signify
- kshenoy/vim-signature
- tpope/vim-sensible
- tpope/vim-fugitive
- tpope/vim-unimpaired
- gcmt/wildfire.vim
- ervandew/supertab
- Shougo/vimproc

####Read carefully the vimrc for shortcuts and configurations.
