" Color
set t_Co=256
syntax on
colorscheme hybrid
highlight Normal ctermbg=none
highlight NonText ctermbg=none 

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
