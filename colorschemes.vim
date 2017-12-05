if has('nvim')
  set termguicolors
endif
set background=dark
colorscheme thaumaturge
hi Comment term=bold ctermfg=Cyan guifg=#666666 gui=bold
" the two below are used by denite search
hi CursorLine guifg=#00EEEE gui=bold guibg=#777777
hi Search guifg=#00EEEE gui=bold guibg=#333333
