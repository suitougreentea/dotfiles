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
NeoBundle 'tyru/caw.vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'itchyny/lightline.vim'
"NeoBundle 'yonchu/accelerated-smooth-scroll'
NeoBundle 'fuenor/qfixgrep'
NeoBundle 'fuenor/qfixhowm'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'haya14busa/vim-easymotion'
NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'Yggdroot/indentLine'
"NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'shougo/vimfiler.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'ktvoelker/sbt-vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'vim-sbt', {'type' : 'nosync', 'base' : '~/.vim/bundle'}
