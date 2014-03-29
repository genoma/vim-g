#!/bin/bash

cd ~/vim

# make clean
make distclean

# complete compilation with lua/ruby/python
./configure --enable-multibyte --with-tlib=ncurses --with-features=huge --enable-rubyinterp --enable-luainterp --enable-pythoninterp --with-lua-prefix=/opt/local --enable-gui=no --without-x --disable-netbeans --with-compiledby=jenoma@gmail.com --enable-fail-if-missing

# minimal compilation with huge no lua/ruby/python
# ./configure --enable-multibyte --with-tlib=ncurses --with-features=huge --enable-gui=no --without-x --disable-netbeans --with-compiledby=jenoma@gmail.com --enable-fail-if-missing

# make && make install
