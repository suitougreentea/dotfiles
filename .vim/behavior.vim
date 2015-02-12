" Mouse
"set mouse=a
"set nomousefocus
"set mousehide

" Indent
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set expandtab

" Line Number
set nu

" Backspace
set backspace=start,eol,indent

" Encoding
set encoding=utf-8

" IM
if has("multi_byte_ime") || has("xim")
  highlight CursorIM guibg=Purple guifg=NONE
  set iminsert=0 imsearch=0
endif

" clipboard
" set clipboard=unnamed

set directory=~/.vim/tmp
