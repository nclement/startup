set tabstop=2 shiftwidth=2 expandtab
set softtabstop=2
set wrap

set cindent
set cinoptions=h1,l1,g1,t0,i4,+4,(0,w1,W4

color desert

filetype plugin indent on
highlight ColorColumn ctermbg=grey guibg=grey
autocmd FileType java,c,cpp setlocal colorcolumn=80
autocmd FileType java se shiftwidth=4 tabstop=4

if &diff
  " diff mode
  set diffopt+=iwhite
endif
