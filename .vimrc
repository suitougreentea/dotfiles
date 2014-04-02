" Vim
set nocompatible

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
NeoBundle 'yonchu/accelerated-smooth-scroll'

" Color
set t_Co=256
syntax on
colorscheme hybrid
highlight Normal ctermbg=none

" Mouse
set mouse=a

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
