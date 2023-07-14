#!/bin/bash

# NERDTree
# https://github.com/preservim/nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# gitgutter
# https://github.com/airblade/vim-gitgutter
mkdir -p ~/.vim/pack/airblade/start
cd ~/.vim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
vim -u NONE -c "helptags vim-gitgutter/doc" -c q

# vim fugitive
# https://github.com/tpope/vim-fugitive
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git
vim -u NONE -c "helptags fugitive/doc" -c q

# vim commentary
# https://github.com/tpope/vim-commentary
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q

# vim surround
# https://github.com/tpope/vim-surround
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q

# vim ale (asynchronous linting engine)
# https://github.com/dense-analysis/ale
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
