#!/bin/bash

cd ~/vim

hg up -C
hg pull
hg update

patch ~/vim/src/auto/configure < ~/.vim/brew-python.patch

make clean
make distclean

# complete compilation with lua/ruby/python/perl
# ./configure --enable-multibyte\
#             --with-tlib=ncurses\
#             --with-features=huge\
#             --enable-rubyinterp\
#             --enable-luainterp\
#             --with-lua-prefix=/opt/local\
#             --enable-perlinterp\
#             --enable-pythoninterp\
#             --enable-gui=no\
#             --without-x\
#             --disable-netbeans\
#             --disable-nls\
#             --with-compiledby=jenoma@gmail.com\
#             --enable-fail-if-missing

# essential compilation whith everything needed for the used plugins
./configure --enable-multibyte\
            --with-tlib=ncurses\
            --with-features=huge\
            --with-lua-prefix=/opt/local\
            --enable-pythoninterp\
            --enable-gui=no\
            --without-x\
            --disable-netbeans\
            --disable-nls\
            --with-compiledby=jenoma@gmail.com\
            --enable-fail-if-missing

# minimal compilation with huge no lua/ruby/python
# ./configure --enable-multibyte --with-tlib=ncurses --with-features=huge --enable-gui=no --without-x --disable-netbeans --with-compiledby=jenoma@gmail.com --enable-fail-if-missing

make && make install
