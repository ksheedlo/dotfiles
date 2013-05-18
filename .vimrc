" This should be enabled already, but just in case.
" Use Vim settings, rather than Vi settings.
set nocompatible

" Enable syntax highlighting
syntax on

" Make indentation as intelligent as possible
set cindent
set smartindent
set autoindent

" Always use spaces instead of tabs.
" 1 tab is 4 spaces, except in certain syntaxes which may override this.
set expandtab
set softtabstop=4
set shiftwidth=4

" Highlight searches, as well as incremental search snippets
set hlsearch
set incsearch

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Show the cursor position
set ruler

" Optimize for a fast terminal connection
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Show line numbers
set number

" Reload files changed outside of Vim
set autoread

" Show the current buffers with :b
cab b buffers

" Use vim with xxd as a hex editor
cab hex %!xxd
cab nohex %!xxd -r

" Trigger nerdtree with nt
cab nt NERDTree

" I don't know what this does, but it's important
set cinkeys=0{,0},:,0#,!^F

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Remap space and backspace for faster navigation
nnoremap <space> 10jzz
nnoremap <backspace> 10kzz

" Some use Escape, some use Caps Lock, I use jk
imap jk <ESC>

" Always use ftplugin
filetype plugin indent on

" Highlight and indent .json files as .js files
autocmd BufNewFile,BufRead *.json set ft=javascript

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" I use this Markdown plugin that loves to fold code by default.
" Great, except nobody else does that and I don't want to see it.
let g:vim_markdown_folding_disabled=1

" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
