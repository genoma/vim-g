vim-g
=====

![genoma's vim](screen.png)

**This Vim configuration is basically a backup of my setup, it comprehends a carefully chosen selection of plugins and settings that are used mainly for sass/less/coffeescript/html editing.**

# INFORMATIONS

This setup has been tested with Vim compiled from source with **Lua, Ruby, Python**, latest iTerm2 test release and Homebrew on OSX Mavericks.

## BASIC STEPS

### Homebrew
Download **Homebrew** from [this link](http://brew.sh/) and follow the instructions.

Install **the_silver_searcher**

`$ brew install the_silver_searcher`

`$ brew install lua`

### VIM
Clone the official repository

`$ hg clone https://vim.googlecode.com/hg/ vim`

`$ hg pull`

`$ hg update`

Compile the source

`./configure --enable-multibyte --with-tlib=ncurses --with-features=huge --enable-rubyinterp --enable-luainterp --enable-pythoninterp --with-lua-prefix=/usr/local --enable-gui=no --without-x --disable-netbeans --enable-fail-if-missing`

`$ make && make install`

> Note: you can use the compile_vim.sh script to compile Vim sources

This will give you a fully complete vim configuration for Lua, Python and Ruby Vim plugins on OSX Mavericks.

### Clone this repository and vundle in your home directory

`git clone https://github.com/genoma/g-vim.git .vim`

`$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`

Link the vimrc to ~/.vimrc

`ln -s ~/.vim/vimrc ~/.vimrc`

#### Start vim and launch
`:BundleInstall`

# PLUGINS

**Plugin Manager**
- gmarik/vundle

**Packages**
- airblade/vim-gitgutter
- cakebaker/scss-syntax.vim
- chriskempson/vim-tomorrow-theme
- gcmt/wildfire.vim
- genoma/vim-less
- genoma/vim-literate-coffeescript
- JulesWang/css.vim
- kchmck/vim-coffee-script
- Lokaltog/vim-easymotion
- mattn/emmet-vim
- nathanaelkane/vim-indent-guides
- ntpeters/vim-better-whitespace
- plasticboy/vim-markdown
- Raimondi/delimitMate
- rking/ag.vim
- tpope/vim-commentary
- tpope/vim-fugitive
- tpope/vim-git
- tpope/vim-repeat
- tpope/vim-sensible
- tpope/vim-surround
- tpope/vim-unimpaired
- tpope/vim-vinegar
- vim-scripts/ZoomWin
- wakatime/vim-wakatime

**Auto Complete**
- ervandew/supertab

#### Read carefully the vimrc for shortcuts and configurations.

# LICENSE
The MIT License (MIT)

Copyright (c) 2014 Alessandro Vioni

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
