" Bundle (NeoBundle)

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle'))

" Bundle List

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
