" Vim
set nocompatible
scriptencoding utf-8

augroup once
  autocmd!
augroup END

" Point the cursor to filename and press gf to open individual files, press <C-o> to return to this file
" <C-w>f will open file in hsplit window, <C-w>gf will open file in new tab. 
source $HOME/.vim/bundle.vim
source $HOME/.vim/behavior.vim
source $HOME/.vim/appearance.vim
source $HOME/.vim/keybinding.vim
source $HOME/.vim/command.vim
source $HOME/.vim/envdependence.vim

" will be separated
let QFixHowm_FileType = 'qfix_memo'
let QFixHowm_RecentMode = 2

let g:neocomplete#enable_at_startup = 1

autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'vimshell' : '.vimshell_hist',
  \ 'scala' : '~/.vim/dict/scala.dict'
  \ }

let g:vimfiler_as_default_explorer = 1
let g:quickrun_config = {
\   "_" : {
\       "runner" : "vimproc",
\       "runner/vimproc/updatetime" : 60,
\       "outputter/buffer/into" : 1
\   },
\}
