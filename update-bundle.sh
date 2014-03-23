#!/bin/sh

git submodule foreach git pull
cd ~/.vim/bundle/vim-l9/
hg pull
hg update
cd ~/.vim/bundle/vim-fuzzyfinder/
hg pull
hg update
