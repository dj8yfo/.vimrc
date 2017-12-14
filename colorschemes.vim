if has('nvim')
  set termguicolors
endif
set background=dark
colorscheme turtles
hi Comment term=bold ctermfg=Cyan guifg=#666666 gui=bold
" the two below are used by denite search
hi CursorLine guifg=#00cccc gui=bold guibg=#444444
hi Search guifg=#00bb00 gui=bold guibg=#222222
