#!/bin/bash

cd ~/vim

make clean
make distclean

./configure --enable-multibyte --with-tlib=ncurses --with-features=huge --enable-rubyinterp --enable-luainterp --enable-pythoninterp --with-lua-prefix=/usr/local --enable-gui=no --without-x --disable-netbeans --enable-fail-if-missing

make
make install
