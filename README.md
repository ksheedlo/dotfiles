dotfiles
========

Ken Sheedlo's dotfiles

## Things to Do

- Make Vim get the latest pathogen automatically
- Make Vim get the latest version of scala syntax automatically (originally
  fetched with this command):
        
        $ mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent \
        syntax ; do wget --no-check-certificate -O ~/.vim/$d/scala.vim \
        https://raw.github.com/scala/scala-dist/master/tool-support/src/vim/$d/scala.vim;\
        done


