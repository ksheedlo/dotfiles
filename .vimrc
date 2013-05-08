syntax on
set cindent
set smartindent
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set hlsearch
set ruler
cab b buffers
cab hex %!xxd
cab nohex %!xxd -r
set cinkeys=0{,0},:,0#,!^F

nnoremap <space> 10jzz
nnoremap <backspace> 10kzz

imap jk <ESC>

execute pathogen#infect()
filetype plugin indent on
let g:vim_markdown_folding_disabled=1

