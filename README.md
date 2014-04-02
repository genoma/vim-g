vim-g
=====

![genoma's vim](screen.png)

**This Vim configuration is basically a backup of my setup, it comprehends a carefully chosen selection of plugins and settings that are used mainly for sass/less/coffeescript/html editing.**

# INFORMATIONS

This setup has been tested with Vim compiled from source with **Lua, Ruby, Python**, latest iTerm2 test release and Homebrew on OSX Mavericks.

## BASIC STEPS

### MacPorts
Download **MacPorts** from [this link](http://www.macports.org/) and follow the instructions.

Install **the_silver_searcher, Python, Ruby, Lua, Perl**

### VIM
Clone the official repository

`$ hg clone https://vim.googlecode.com/hg/ ~/vim`

Launch the `./compile_vim.sh` that basically will compile, patch for the _ported_ Python 2.7.6, Lua, Ruby and Perl.

## Clone this repository

`git clone https://github.com/genoma/g-vim.git .vim`

Link the vimrc to ~/.vimrc

`ln -s ~/.vim/vimrc ~/.vimrc`

### Download Submodules

`git submodule foreach git pull`

# PLUGINS

The `bundles.txt` file contains all the plugins installed

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
