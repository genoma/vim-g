#!/bin/bash

cd ~/vim

make clean
make distclean

./configure --enable-multibyte --with-tlib=ncurses --enable-cscope --with-features=huge --enable-rubyinterp --enable-luainterp --with-lua-prefix=/usr/local --enable-gui=no --without-x --disable-netbeans --enable-fail-if-missing

make
make install
