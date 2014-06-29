" Vim
set nocompatible
scriptencoding utf-8

augroup once
  autocmd!
augroup END

" Point the cursor to filename and press gf to open individual files, press <C-o> to return to this file
" <C-w>f will open file in hsplit window, <C-w>gf will open file in new tab. 
source $DOTFILESDIR/vim/bundle.vim
source $DOTFILESDIR/vim/behavior.vim
source $DOTFILESDIR/vim/appearance.vim
source $DOTFILESDIR/vim/keybinding.vim
source $DOTFILESDIR/vim/command.vim
source $DOTFILESDIR/vim/envdependence.vim
