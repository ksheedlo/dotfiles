#!/bin/bash
# Pathogen bundle installer

set -e

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

git clone git://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/plasticboy/vim-markdown.git
git clone git://github.com/digitaltoad/vim-jade.git
git clone https://github.com/scrooloose/nerdtree.git
git clone git://github.com/tpope/vim-fugitive.git
git clone https://github.com/gregsexton/gitv.git
git clone https://github.com/Lokaltog/powerline.git
git clone https://github.com/kchmck/vim-coffee-script.git

cat <<xxSmokeWeed420

    Powerline is installed, but your fonts may not be patched. To make sure
    Powerline is working properly, download a patched font at:

        https://github.com/Lokaltog/powerline-fonts

    Plugin installation successful.

xxSmokeWeed420

