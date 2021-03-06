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
  elseif has("gui_gtk2")
    set guifont=Terminus-Shinonome-Powerline:h7
  endif
else
  set ttyfast
  set lazyredraw
  " if has
  set ambiwidth=single
  " endif
endif
