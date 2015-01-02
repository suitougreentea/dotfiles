" KeyBinding
nnoremap [wt] <Nop>
nmap <Space>s [wt]
nnoremap <silent> [wt] <Nop>
nnoremap <silent> [wt]h <C-w>h
nnoremap <silent> [wt]j <C-w>j
nnoremap <silent> [wt]k <C-w>k
nnoremap <silent> [wt]l <C-w>l
nnoremap <silent> [wt]H <C-w>H
nnoremap <silent> [wt]J <C-w>J
nnoremap <silent> [wt]K <C-w>K
nnoremap <silent> [wt]L <C-w>L
nnoremap <silent> [wt]s :<C-u>split<CR>
nnoremap <silent> [wt]v :<C-u>vsplit<CR>
nnoremap <silent> [wt]t :<C-u>tabnew<CR>
nnoremap <silent> [wt]T :<C-u>Unite tab<CR>
nnoremap <silent> [wt]n gt
nnoremap <silent> [wt]p gT
nnoremap <silent> [wt]b :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap <silent> [wt]B :<C-u>Unite buffer -buffer-name=file<CR>

" .vimrc
nnoremap [wt]1 :<C-u>e ~/.vimrc<CR>
nnoremap [wt]2 :<C-u>source ~/.vimrc<CR>

" VimFiler
nnoremap [wt]3 :VimFilerExplorer -project<CR>

" SBT
nnoremap [wt]4 :VimShellInteractive sbt<CR>
nnoremap [wt]5 :VimShellSendString run<CR>

" Swap ; and :
noremap ; :
noremap : ;

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

" disable arrow keys (for training)
"map <Up> <Nop>
"map <Down> <Nop>
"map <Left> <Nop>
"map <Right> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>

" disable ZZ(save and quit), ZQ(unsave and quit)
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>