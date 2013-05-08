#!/bin/bash
# Pathogen bundle installer

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

git clone git://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/plasticboy/vim-markdown.git

