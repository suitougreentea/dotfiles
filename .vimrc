" Vim
set nocompatible
scriptencoding utf-8

augroup once
  autocmd!
augroup END

" NeoBundle
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle'))
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'slim-template/vim-slim.git'
NeoBundle 'kana/vim-submode'
NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle "tyru/caw.vim"
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/itchyny/lightline.vim'
" NeoBundle 'yonchu/accelerated-smooth-scroll'
NeoBundle 'fuenor/qfixgrep'
NeoBundle 'fuenor/qfixhowm'

" Color
set t_Co=256
syntax on
colorscheme hybrid
highlight Normal ctermbg=none

" Mouse
set mouse=a
set nomousefocus
set mousehide

" KeyBinding
nnoremap [wt] <Nop>
nmap <Space>s [wt]
nnoremap <silent> [wt] <Nop>
nnoremap <silent> [wt]h <C-w>h
nnoremap <silent> [wt]j <C-w>j
nnoremap <silent> [wt]k <C-w>k
nnoremap <silent> [wt]l <C-w>l
nnoremap <silent> [wt]s :<C-u>split<CR>
nnoremap <silent> [wt]v :<C-u>vsplit<CR>
nnoremap <silent> [wt]t :<C-u>tabnew<CR>
nnoremap <silent> [wt]T :<C-u>Unite tab<CR>
nnoremap <silent> [wt]n gt
nnoremap <silent> [wt]p gT
nnoremap <silent> [wt]b :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap <silent> [wt]B :<C-u>Unite buffer -buffer-name=file<CR>

" Alias
command! Reload :source ~/.vimrc

" submode.vim
" http://d.hatena.ne.jp/thinca/20130131/1359567419
" ウィンドウサイズの変更キーを簡易化する
" [C-w],[+]または、[C-w],[-]
call submode#enter_with('winsize', 'n', '', '[wt]>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '[wt]<', '<C-w><')
call submode#enter_with('winsize', 'n', '', '[wt]-', '<C-w>-')
call submode#enter_with('winsize', 'n', '', '[wt]+', '<C-w>+')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '-', '<C-w>-')
call submode#map('winsize', 'n', '', '+', '<C-w>+')

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

" Status
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
set laststatus=2

" Backspace
set backspace=start,eol,indent

" Encoding
set encoding=utf-8

" .vimrc
nnoremap <F10> :<C-u>e ~/.vimrc<CR>
nnoremap <F11> :<C-u>source ~/.vimrc<CR>

" Depends on environment
if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h9
    set guifontwide=MeiryoKe_Console:h10:cSHIFTJIS
    set linespace=0
    set columns=140
    set lines=50
    set cmdheight=1
    autocmd once FocusGained * set transparency=240
    autocmd once FocusLost * set transparency=128
    set guioptions-=m
    set guioptions-=T
    if has("kaoriya")
      set ambiwidth=auto
    endif
  endif
else
  " if has
  set ambiwidth=double
  " endif
endif

" IM
if has("multi_byte_ime") || has("xim")
  highlight CursorIM guibg=Purple guifg=NONE
  set iminsert=0 imsearch=0
endif
