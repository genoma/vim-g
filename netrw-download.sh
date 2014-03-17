#!/bin/sh
cd ~/.vim/bundle/netrw/
curl -O http://www.drchip.org/astronaut/vim/vbafiles/netrw.vba.gz
gunzip netrw.vba.gz
# vim +e ~/.vim/bundle/netrw/netrw.vba +UseVimball ~/.vim/bundle/netrw/

