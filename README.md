vim-g
=====

**This Vim configuration is basically a backup of my setup, it comprehends a carefully chosen selection of plugins and settings that are used mainly for sasslesscoffeescripthtml editing.**

# INFORMATIONS


#### To run this Vim distribution i strongly advise you to download this personalised [MacVim](https:github.comgenomamacvimreleases) version kept in sync with the official [Vim](http:www.vim.orgmercurial.php) Mercurial repository.


## BASIC STEPS

### Vim configuration

You need at last Vim compiled with Python support or the [Brewed](http:brew.sh) version of [editorconfig-core-c](https:github.comeditorconfigeditorconfig-core-c) to use [editorconfig-vim](https:github.comeditorconfigeditorconfig-vim).

## Clone this repository

`git clone https://github.com/genoma/vim-g ~/.vim`

### Download Submodules

`git submodule update --init --recursive`

## Update Submodules

`git submodule foreach git pull`

## Packages

* vim-pathogen
* ag.vim
* ctrlp.vim
* delimitMate
* editorconfig-vim
* gitv
* html5.vim
* javascript-libraries-syntax.vim
* limelight.vim
* sparkup
* supertab
* syntastic
* tcomment_vim
* undotree
* vim-airline
* vim-better-whitespace
* vim-characterize
* vim-coffee-script
* vim-css3-syntax
* vim-easy-align
* vim-easymotion
* vim-fugitive
* vim-git
* vim-haml
* vim-indent-guides
* vim-js2coffee
* vim-less
* vim-literate-coffeescript
* vim-markdown
* vim-mustache-handlebars
* vim-nefertiti
* vim-netrw
* vim-repeat
* vim-sensible
* vim-signify
* vim-surround
* vim-tomorrow-theme
* vim-unimpaired
* vim-vinegar
* wildfire.vim
* yajs.vim

<br>

# LICENSE
The MIT License (MIT)

Copyright (c) 2014 Alessandro Vioni

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, andor sell copies of
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
